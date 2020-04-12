require_relative '../../support/env.rb'
#project = File.expand_path('../..', __FILE__)

project_root = File.expand_path('../', __FILE__)
$SSO_PATH = YAML.load_file(project_root + "/sso_xpath.yml")
$EDU_PATH = YAML.load_file(project_root + "/../../DC-EDU/support/edu_xpath.yml")
