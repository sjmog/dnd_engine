require 'services/skill_check'

describe SkillCheck do
  let(:character) { double :character, skills: 0 }

  describe '.with' do
    before do
      stub_roll(15)
    end

    it 'can make a successful check' do
      expect(described_class.with(character, :jump, 15)).to eq true
    end

    it 'can make a failed check' do
      expect(described_class.with(character, :jump, 20)).to eq false
    end
  end
end