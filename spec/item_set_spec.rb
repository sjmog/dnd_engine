require 'item_set'

describe ItemSet do
  subject(:item_set) { described_class.new }

  it 'stores items' do
    armor = double :item
    item_set_with_armor = described_class.new(armor)
    expect(item_set_with_armor.items).to include armor
  end
end