require 'character'
require 'base_class'

describe 'Character classes' do
  let(:character) { Character.new }
  let(:wizard_class) { BaseClass.new(:wizard, 3) }
  let(:wizard)   { Character.new(wizard_class) }

  it 'I can view the character class' do
    expect(wizard.class_name).to eq :wizard
  end

  it 'defaults to :fighter' do
    expect(character.class_name).to eq :fighter
  end
end