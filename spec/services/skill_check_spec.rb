require 'services/skill_check'

describe SkillCheck do
  let(:character) { double :character, skills: 0 }

  describe '.with' do
    it 'responds' do
      expect(described_class).to respond_to(:with).with(3).arguments
    end

    context 'when the roll is high' do
      before do
        stub_roll(15)
      end

      it 'makes a successful check' do
        expect(described_class.with(character, :jump, 15)).to eq true
      end
    end

    context 'when the roll is low' do
      before do
        stub_roll(5)
      end

      it 'makes a failed check' do
        expect(described_class.with(character, :jump, 15)).to eq false
      end
    end
  end
end