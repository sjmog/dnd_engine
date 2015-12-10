require 'item'

describe Item do
  subject(:item) { described_class.new }
  subject(:armor) do 
    described_class.new(
      type: :armor,
      armor_check_penalty: 2
    )
  end

  describe '#type' do
    it 'has a type' do
      armor = described_class.new(type: :armor)
      expect(armor.type).to eq :armor
    end

    it 'defaults to :misc' do
      expect(item.type).to eq :misc
    end
  end

  describe '#armor_check_penalty' do
    it 'may have an armor check penalty' do
      expect(armor.armor_check_penalty).to eq 2
    end
  end
end