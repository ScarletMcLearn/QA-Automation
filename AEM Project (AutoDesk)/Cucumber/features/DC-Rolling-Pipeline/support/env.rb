require_relative '../../support/env.rb'

project_root = File.expand_path('../', __FILE__)
$PIP_PATH = YAML.load_file(project_root + "/pipeline_xpath.yml")
