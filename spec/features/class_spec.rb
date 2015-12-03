require 'character'
require 'base_class'

describe 'Character classes' do
  let(:character) { Character.new }
  let(:wizard_class) { BaseClass.new(:wizard, 3) }
  let(:wizard)   { Character.new(classes: [wizard_class]) }
  let(:rogue_class) { BaseClass.new(:rogue, 2) }
  let(:multiclass_character) do 
    Character.new(classes: [wizard_class, rogue_class])
  end

  it 'I can view the character classes' do
    expect(wizard.class_names).to include :wizard
  end

  it 'I can multiclass' do
    expect(multiclass_character.class_names).to include :wizard
    expect(multiclass_character.class_names).to include :rogue
  end

  it 'defaults to :fighter' do
    expect(character.class_names).to include :fighter
  end
end