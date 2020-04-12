And (/^user selects the second release$/) do
  find(:xpath,$PATH['release_rdbtn']).click
end

And (/^System Requirements link is "([^"]*)"$/) do | link |
  find(:xpath,$PATH['system_requirements_link'])['href'].should match(link)
end

Then (/^required field has label "([^"]*)"$/) do |text|
   expect(find(:xpath,$PATH['companyinformationMarketo_label']).text).to eq(text)
end

And (/^user empties required field$/) do
  field = find(:xpath,$PATH['companyinformationMarketo_company'])
  field.set("")
end

And (/^enters optional information$/) do
  field = find(:xpath,$PATH['companyinformationMarketo_phone'])
  field.set("info")
end

And (/^the error message appears$/) do
  field = find(:xpath,$PATH['companyinformationMarketo_errMsg']).should be_visible
end
