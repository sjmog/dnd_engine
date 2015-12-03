require 'character'

describe "Character abilities" do
  let(:character) { Character.new(abilities: ability_set) }
  let(:ability_set) { AbilitySet.new }

  it 'I can view the character ability modifiers' do
    expect(character.ability(:strength)).to eq 0
  end

  it 'I can increment character abilities' do
    2.times { ability_set.increment_ability(:strength) }
    expect(character.ability(:strength)).to eq 1
  end
end