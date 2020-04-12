require_relative '../../support/env.rb'

project_root = File.expand_path('../', __FILE__)
$PROD_XPATH = YAML.load_file(project_root + "/basic-xpath.yml")
