require 'rspec'
require 'rspec/expectations'
require 'watir'
require 'watir-webdriver'
require 'selenium-webdriver'
require 'watir-webdriver-performance'


# Test development and debugging gems
require 'pry'
require 'yaml'

#Load user data
USERDATA = YAML.load_file("features/support/data/users.yml")
UPLOADFILEDATA = YAML.load_file("features/support/data/upload_files_data.yml")
