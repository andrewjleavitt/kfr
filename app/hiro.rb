class Hiro
  attr_accessor :skill, :mental_state, :power, :durability, :weapon

  def initialize(attributes = {})
    @skill = attributes[:skill]
    @mental_state = attributes[:mental_state]
    @power = attributes[:power]
    @durability = attributes[:durability]
  end

  def equip_weapon weapon
    @weapon = weapon
  end
end