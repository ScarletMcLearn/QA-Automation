
Given(/^the user is on a PDS URL for language packs "([^"]*)"$/) do |product|
  source = $PDS_BASE_URL+(product)+'/languagepacks'
  response = HTTParty.get(source,:verify => false)  #verify option to disable SSL verification;
  @data_hash = JSON.parse(response.body)
  @responseCodepds = response.code
end

ACD_lang_pack = '[{"cs-CZ":"Čeština"},{"de-DE":"Deutsch"},{"en-US":"English"},{"es-ES":"Español"},{"fr-FR":"Français"},{"hu-HU":"Magyar"},{"it-IT":"Italiano"},{"ja-JP":"日本語"},{"ko-KR":"한국어"},{"pl-PL":"Polski"},{"pt-PT":"Português"},{"ru-RU":"Pусский"},{"zh-CN":"简体中文"},{"zh-TW":"繁體中文"}]'
MAYA_lang_pack = '[{"en-US":"English"},{"ja-JP":"日本語"},{"zh-CN":"简体中文"}]'
F360B_lang_pack = '[{"en-US": "English"}]'
