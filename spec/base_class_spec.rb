require 'base_class'

describe BaseClass do
  subject(:base_class) { described_class.new }
  subject(:wizard)     { described_class.new(:wizard, 3) }

  describe '#name' do
    it 'returns the class name' do
      expect(wizard.name).to eq :wizard
    end

    it 'defaults to fighter' do
      expect(base_class.name).to eq :fighter
    end
  end

  describe '#level' do
    it 'returns the class level' do
      expect(wizard.level).to eq 3
    end

    it 'defaults to 1' do
      expect(base_class.level).to eq 1
    end
  end
end