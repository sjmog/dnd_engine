require 'character'
require 'services/skill_check'

describe 'Making a skill check' do
  it 'I can make a skill check' do
    character = Character.new
    stub_roll(15)
    expect(SkillCheck.with(character, :jump, 15)).to eq true
    expect(SkillCheck.with(character, :jump, 20)).to eq false
  end
end