require 'character'

describe Character do
  subject(:character) { described_class.new }

  describe '#skills' do
    it 'returns the value for a skill' do
      expect(subject.skills(:jump)).to eq 0
    end
  end
end