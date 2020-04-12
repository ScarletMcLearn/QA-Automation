require_relative '../../support/env.rb'

project_root = File.expand_path('../', __FILE__)
$EDU_PATH = YAML.load_file(project_root + "/edu_xpath.yml")
