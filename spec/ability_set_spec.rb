require 'ability_set'

describe AbilitySet do
  subject(:ability_set) { described_class.new }

  describe '#ability' do
    it 'returns the modifier for an ability' do
      expect(ability_set.ability(:strength)).to eq 10
    end
  end
end