require_relative "../../test/test_helper"

describe Hiro do
  describe "#initialize" do
    it 'can instantiate hiro with attributes' do
      hiro = Hiro.new(attributes_for(:hiro))
      assert_instance_of Hiro, hiro
      assert_equal(:adept, hiro.skill)
      assert_equal(:stable, hiro.mental_state)
      assert_equal(:weak, hiro.power)
      assert_equal(:glass, hiro.durability)
    end
  end

  describe "#equip_weapon" do
    it 'can equip a weapon' do
      pea_shooter = build(:weapon)
      hiro = build(:hiro)
      hiro.equip_weapon(pea_shooter)
      assert_equal(pea_shooter, hiro.weapon)
      assert_instance_of(Weapon, hiro.weapon)
    end
  end
end
