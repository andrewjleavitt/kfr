require "minitest/autorun"
require "factory_girl"

require '../../app/main.rb'

FactoryGirl.definition_file_paths = [File.expand_path('../factories', __FILE__)]
FactoryGirl.find_definitions

class MiniTest::Spec
  include FactoryGirl::Syntax::Methods
end
