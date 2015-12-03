require 'character'

describe "Character abilities" do
  let(:character) { Character.new }

  it 'I can view the character abilities' do
    expect(character.ability(:strength)).to eq 10
  end
end