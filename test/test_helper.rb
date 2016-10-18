require "minitest/autorun"
require "factory_girl"

require File.expand_path('../../app/main.rb', __FILE__)

FactoryGirl.find_definitions

class MiniTest::Spec
  include FactoryGirl::Syntax::Methods
end

