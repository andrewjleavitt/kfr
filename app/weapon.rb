class Weapon
  attr_accessor :bullet_in_chamber, :clip

  def chamber
    if @clip.size > 0
      @clip.size -= 1
      @bullet_in_chamber = true
    end
  end

  def bullet_in_chamber?
    @bullet_in_chamber
  end

  def load(clip)
    @clip = clip
  end

  def fire
    if (@bullet_in_chamber)
      @bullet_in_chamber = false
      chamber
    else
      "Play the click noise"
    end
  end
end

class Clip
  attr_accessor :size
end