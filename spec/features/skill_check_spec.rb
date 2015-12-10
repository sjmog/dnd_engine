require 'race'
require 'character'
require 'services/skill_check'

describe 'Making a skill check' do
  it 'I can make a basic skill check' do
    character = Character.new
    stub_roll(15)
    expect(SkillCheck.with(character, :jump, 15)).to eq true
    expect(SkillCheck.with(character, :jump, 20)).to eq false
  end

  it 'I can make a more advanced skill check' do
    halfling = Race.new(
      abilities: { dexterity: 2 },
      skills: { move_silently: 2 }
    )
    skill_set = SkillSet.new(ranks_table: { move_silently: 4 })
    armor = Item.new(
      type: :armor, 
      armor_check_penalty: 2
    )
    item_set = ItemSet.new(armor)
    character = Character.new(race: halfling, skills: skill_set, items: item_set)
    stub_roll(15)
    # This character has +7 on Move Silently
    # And an armour check penalty of -2
    # For a total of +5 on the roll
    expect(SkillCheck.with(character, :move_silently, 20)).to eq true
    expect(SkillCheck.with(character, :move_silently, 21)).to eq false
  end
end