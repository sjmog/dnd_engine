require 'character'

describe Character do
  subject(:character) { described_class.new(skills: skill_set) }
  let(:skill_set) { double :skill_set, skill: 0 }

  describe '#skill' do
    it 'returns the value for a skill' do
      expect(skill_set).to receive(:skill).with(:jump)
      character.skill(:jump)
    end
  end

  describe '#increment_skill' do
    context 'with skill points available to spend' do
      it 'I can increment ranks on a skill' do
        expect(skill_set).to receive(:increment_skill)
        character.increment_skill(:jump)
      end
    end

    context 'without skill points available to spend' do
      it 'I cannot increment ranks on a skill' do
        allow(character).to receive(:skill_points).and_return 0
        expect { character.increment_skill(:jump) }.to raise_error 'No skill points available'
      end
    end
  end

  describe '#class_names' do
    let(:wizard) { double :base_class, name: :wizard }
    subject(:wizard_character) { described_class.new(classes: [wizard]) }

    it 'returns the class names' do
      expect(wizard_character.class_names).to include :wizard
    end
  end
end