require 'ability_set'

describe AbilitySet do
  subject(:ability_set) { described_class.new }

  it 'stores the ability scores' do
    elite_ability_set = described_class.new(strength: 15, dexterity: 15)
    expect(elite_ability_set.ability(:strength)).to eq 2
    expect(elite_ability_set.ability(:dexterity)).to eq 2
    expect(elite_ability_set.ability(:constitution)).to eq 0
  end

  describe '#ability' do
    it 'returns the modifier for an ability' do
      expect(ability_set.ability(:strength)).to eq 0
    end
  end

  describe '#increment_ability' do
    it 'I can increment abilities' do
      2.times { ability_set.increment_ability(:strength) }
      expect(ability_set.ability(:strength)).to eq 1
    end
  end
end