require 'character'

describe Character do
  context 'abilities' do
    subject(:character) { Character.new(abilities: ability_set) }
    let(:ability_set) { double :ability_set, ability: 0 }

    describe '#ability' do
      it 'returns the modifier for an ability' do
        expect(ability_set).to receive(:ability).with(:strength)
        character.ability(:strength)
      end
    end
  end

  context 'skills' do
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
  end

  context 'classes' do
    describe '#class_names' do
      subject(:wizard_character) { described_class.new(classes: [wizard]) }
      let(:wizard) { double :base_class, name: :wizard }

      it 'returns the class names' do
        expect(wizard_character.class_names).to include :wizard
      end
    end
  end
end