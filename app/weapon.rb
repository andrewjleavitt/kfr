class Weapon
  attr_accessor :bullet_in_chamber

  def chamber
    @bullet_in_chamber = true
  end

  def bullet_in_chamber?
    @bullet_in_chamber
  end
end