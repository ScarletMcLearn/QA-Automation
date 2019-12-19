const fs = require('fs');
const replaceStream = require('replacestream');
const gherkin = require('gherkin-parser');
var step_definitions_path='./features/step-definitions/step-definitions.js';
var actionwords_path='./features/step-definitions/actionwords.js';

var readStream = fs.createReadStream(process.argv[2]);
var step_definitions = fs.readFileSync(step_definitions_path, 'utf8').trim();
var actionwords = fs.readFileSync(actionwords_path, 'utf8').trim();
var output="";
readStream
.pipe(replaceStream('Scenario Outline:', 'Scenario:'))
.pipe(replaceStream('Background:', 'Scenario: Background'))
.pipe(gherkin())
.on('data', function (chunk) {
    output+=chunk;
  })
.on('end', function () {
	feature=JSON.parse(output)[0];
	var steps=[];
  	for (i=0;i<feature.scenarios.length;i++){
  		steps=process_steps("given",feature.scenarios[i].given,steps);
  		steps=process_steps("when",feature.scenarios[i].when,steps);
  		steps=process_steps("then",feature.scenarios[i].then,steps);
	}
	var existing=[],added=[];
	existing.steps=[];
	existing.actionwords=[];
	added.steps=[];
	added.actionwords=[];
	step_definitions=step_definitions.slice(0,-1);
	actionwords=actionwords.replace("};","").trim();
	actionwords=actionwords+",\r\n";
	steps.forEach(function(step, i, steps){
		step.regex="/^"+step.regex
		.replace("/^","")
		.replace("$/","")
		+"$/";
		if (step_definitions.indexOf(step.regex)!=-1){
			existing.steps[existing.steps.length]=step.regex;
		}else{
		    var vars=step.vars.join(",");
		    if (vars.length>0) vars=vars;
			step_definition="\r\n	this."+step.type.charAt(0).toUpperCase()+step.type.slice(1)+"("+step.regex+", function ("+vars+") {\r\n"
			+"		this.actionwords."+step.actionword+"("+vars.slice(0,-1)+");\r\n"
			+"	});\r\n";
			added.steps[added.steps.length]=step.regex;
			step_definitions=step_definitions+step_definition;
		}
		if (actionwords.indexOf(step.actionword)!=-1){
			existing.actionwords[existing.actionwords.length]=step.actionword;
		}else{
			vars=step.vars.join(", ");
			actionword="	"+step.actionword+": function("+vars+") {\r\n"
			+"		\r\n"
			+"	},\r\n";
			added.actionwords[added.actionwords.length]=step.actionword;
			actionwords=actionwords+actionword;
		}
	});
	step_definitions=step_definitions+"}";
	if (actionwords.slice(-3,-2)==",") actionwords=actionwords.slice(0,-3);
	actionwords=actionwords+"\r\n};";
	fs.writeFile(step_definitions_path, step_definitions);
	fs.writeFile(actionwords_path, actionwords);
	console.log("Ignored "+existing.steps.length+" existing step definitions and added "+added.steps.length+" new:")
	console.log(added.steps.join("\r\n"));
	console.log("Ignored "+existing.actionwords.length+" existing actionwords and added "+added.actionwords.length+" new:")
	console.log(added.actionwords.join("\r\n"));
});

function process_steps(type,this_steps,steps){
	for (j=0;j<this_steps.length;j++){
		steps_key=steps.length;
		steps[steps_key]=[];
		var regex="/^"+JSON.stringify(this_steps[j]).replace(/\\"(.*?)\\"/g,'"(.*)"').slice(1, -1)+"$/";
		var vars=JSON.stringify(this_steps[j]).match(/\<(.*?)\>/g);
		if (vars == null) vars = [];
		vars.forEach(function(el, i){
			vars[i]=el.slice(1, -1);
		});
		var more_vars=JSON.stringify(this_steps[j]).match(/\\"(.*?)\\"/g);
		if (more_vars == null) more_vars = [];
		more_vars.forEach(function(el, i){
			if (el.indexOf("<")==-1){
				vars[vars.length]="param_"+String.fromCharCode(97 + i);
			}
		});
		var actionword=JSON.stringify(this_steps[j]).replace(/\\"(.*?)\\"/g, '').slice(1, -1)
		.toLowerCase()
		.replace(/(^([a-zA-Z\p{M}]))|([ -][a-zA-Z\p{M}])/g,function($1){return $1.toUpperCase()})
		.replace(/ /g,'')
		.replace(/\W/g, '');
		actionword=actionword.charAt(0).toLowerCase()+actionword.slice(1);
		steps[steps_key]['type']=type;
		steps[steps_key]['regex']=regex;
		steps[steps_key]['actionword']=actionword;
		steps[steps_key]['vars']=vars;
	}
	return steps;
}