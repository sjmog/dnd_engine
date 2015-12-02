require 'character'

describe Character do
  subject(:character) { described_class.new }

  describe '#skills' do
    it 'returns the value for a skill' do
      expect(character.skills(:jump)).to eq 0
    end
  end

  describe '#increment_skill' do
    it 'increments a skill' do
      character.increment_skill(:jump)
      expect(character.skills(:jump)).to eq 1
    end
  end
end