require 'character'

describe Character do
  subject(:character) { described_class.new }

  describe '#skills' do
    it 'returns the value for a skill' do
      expect(character.skills(:jump)).to eq 0
    end
  end

  describe '#increment_skill' do
    context 'with skill points available to spend' do
      it 'I can increment ranks on a skill' do
        character.increment_skill(:jump)
        expect(character.skills(:jump)).to eq 1
      end
    end

    context 'without skill points available to spend' do
      it 'I cannot increment ranks on a skill' do
        allow(character).to receive(:skill_points).and_return 0
        expect { character.increment_skill(:jump) }.to raise_error 'No skill points available'
      end
    end
  end

  describe '#class_name' do
    let(:wizard) { double :base_class, name: :wizard }
    subject(:wizard_character) { described_class.new(wizard) }

    it 'returns the class name' do
      expect(wizard_character.class_name).to eq :wizard
    end

    it 'defaults to :fighter' do
      expect(character.class_name).to eq :fighter
    end
  end
end