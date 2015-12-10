require 'character'

describe Character do
  describe '#abilities' do
    subject(:character) { Character.new(abilities: ability_set) }
    let(:ability_set) { double :ability_set, ability: 0 }

    it 'returns the character ability set' do
      expect(character.abilities).to eq ability_set
    end
  end
    
  describe '#race' do
    subject(:character) { described_class.new(race: race) }
    let(:race) { double :race }

    it 'returns the race' do
      expect(character.race).to eq race
    end
  end

  describe '#skills' do
    subject(:character) { described_class.new(skills: skill_set) }
    let(:skill_set) { double :skill_set }

    it 'returns the character skill set' do
      expect(character.skills).to eq skill_set
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

  context 'items' do
    subject(:character) { described_class.new(items: item_set) }
    let(:item_set) { double :item_set }

    describe '#item_set' do
      it 'returns the item set' do
        expect(character.items).to eq item_set
      end
    end
  end
end