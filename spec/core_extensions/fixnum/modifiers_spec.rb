require 'core_extensions/fixnum/modifiers'

Fixnum.include CoreExtensions::Fixnum::Modifiers

describe Fixnum do
  it 'calculates the modifier for any integer value' do
    expect(10.modifier).to eq 0
    expect(12.modifier).to eq 1
    expect(8.modifier).to eq -1
  end
end
