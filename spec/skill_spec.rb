require 'skill'

describe Skill do
  subject(:jump) { described_class.new(name: jump, ability: :strength) }

  describe '.find_by_name' do
    it 'finds a skill by name' do
      expect(described_class.find_by_name(:jump)).to eq jump
    end
  end
end