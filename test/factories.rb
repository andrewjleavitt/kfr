FactoryGirl.define do
  factory :weapon do
    # bullet_in_chamber false
  end

  factory :hiro do
    skill :adept
    mental_state :stable
    power :weak
    durability :glass
  end
end