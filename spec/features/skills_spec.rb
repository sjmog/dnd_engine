require 'character'

describe 'Character skills' do
  let(:character) { Character.new }

  it 'I can view the value for a skill' do
    expect(character.skills(:jump)).to eq 0
  end

  it 'I can set ranks on a skill' do
    character.increment_skill(:jump)
    expect(character.skills(:jump)).to eq 1
  end
end