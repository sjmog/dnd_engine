require 'services/skill_check'

describe SkillCheck do
  let(:halfling) do
    double :race, 
            abilities: { dexterity: 2 },
            skills: { move_silently: 2 }
  end

  let(:skill_set) { double :skill_set, skill: 4 }

  let(:armor) do
    double :item,
            type: :armor, 
            armor_check_penalty: 2
  end

  let(:item_set) { double :item_set, items: [armor] }

  let(:character) { double :character, race: halfling, skills: skill_set, items: item_set }

  describe '.with' do
    before do
      stub_roll(15)
    end

    it 'can make a successful check' do
      # This character has +7 on Move Silently (+4 ranks, +1 dex, +2 race)
      # And an armour check penalty of -2
      # For a total of +5 on the roll
      expect(described_class.with(character, :move_silently, 20)).to eq true
    end

    it 'can make a failed check' do
      expect(described_class.with(character, :move_silently, 21)).to eq false
    end
  end
end