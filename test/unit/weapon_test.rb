require_relative "../../test/test_helper"

describe Weapon do
  describe "#chamber" do
    it 'puts a bullet in the chamber' do
      pea_shooter = build(:weapon)
      assert_equal(false, pea_shooter.bullet_in_chamber?)
      pea_shooter.chamber
      assert_equal(true, pea_shooter.bullet_in_chamber?)
    end
  end

  # describe "#fire" do
  #   it 'fires the bullet in the chamber' do
  #     pea_shooter = build(:pea_shooter)
  #   end
  # end
end