require_relative "../../test/test_helper"

describe Weapon do
  let(:pea_shooter) { build(:weapon) }
  let(:clip) { build(:clip) }

  describe "#chamber" do
    it 'puts a bullet in the chamber' do
      assert_equal(false, pea_shooter.bullet_in_chamber?)
      pea_shooter.chamber
      assert_equal(true, pea_shooter.bullet_in_chamber?)
    end

    it 'loads a bullet from the magazine' do
      pea_shooter.load(clip)
      pea_shooter.chamber
      assert_equal(8, pea_shooter.clip.size)
    end

    it 'does not put a bullet in the chamber when the clip is empty' do
      pea_shooter.load(clip)
      pea_shooter.chamber
      9.times { pea_shooter.fire }

      assert_equal(0, pea_shooter.clip.size)
      assert_equal(false, pea_shooter.bullet_in_chamber?)
    end
  end

  describe "#load" do
    it "loads the given clip" do
      pea_shooter.load(clip)
    end
  end

  describe "#fire" do
    it 'fires the bullet in the chamber' do
      pea_shooter.load(clip)
      pea_shooter.chamber
      pea_shooter.fire
    end

    it 'plays the click noise if there is not a bullet in the chameber' do
      pea_shooter.load(clip)
      pea_shooter.chamber
      9.times { pea_shooter.fire }

      assert_equal("Play the click noise", pea_shooter.fire)
    end
  end
end