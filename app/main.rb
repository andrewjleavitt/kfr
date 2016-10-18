require_relative "./hiro"
require_relative "./weapon"

class Fireable
  attr_accessor :bullets_in_clip, :bullet_in_chamber

  def fire
    if @bullet_in_chamber
      @bullet_in_chamber = false
      load_from_clip
    else
      click
    end
  end

  def load_from_clip
    if @bullets_in_clip > 0
      @bullets_in_clip -= 1
      @bullet_in_chamber = true
    end
  end

  def click
    :click
  end

end

class Pistol < Fireable
  def ammo
    :nine_mm
  end

  def ammo_capacity
    9
  end

  def damage
    5
  end

  def accuracy
    5
  end

  def fire_speed
    5
  end

  def reload_speed
    5
  end
end

# class Hiro
#   attr_accessor :weapon
#
#   def grab
#
#   end
#
#   def move direction
#
#   end
#
#   def cover
#
#   end
#
#   def kick
#
#   end
#
#   def fire_from_cover
#
#   end
#
#   def fire_over_shoulder
#
#   end
#
#   def fire_weapon
#     @weapon.fire
#   end
#
#   def throw_weapon
#     equip_weapon nil
#   end
#
#   def equip_weapon weapon
#     @weapon = weapon
#   end
#
#   def mental_state
#     :sane
#   end
#
#   def skill
#     :adept
#   end
#
#   def speed
#     :quick
#   end
#
#   def power
#     :weak
#   end
#
#   def durability
#     :house_of_cards
#   end
# end
