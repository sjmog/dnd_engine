require 'character'

describe "Character abilities" do
  let(:character) { Character.new(abilities: ability_set) }
  let(:ability_set) { AbilitySet.new }

  it 'I can give a character particular abilities' do
    strong_ability_set = AbilitySet.new(strength: 15)
    strong_character = Character.new(abilities: strong_ability_set)

    abilities = strong_character.abilities
    expect(abilities.ability(:strength)).to eq 2
  end

  it 'I can increment character abilities' do
    2.times { ability_set.increment_ability(:strength) }
    expect(ability_set.ability(:strength)).to eq 1
  end
end