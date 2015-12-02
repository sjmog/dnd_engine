require 'character'

describe 'Character skills' do
  let(:character) { Character.new }

  it 'I can view the value for a skill' do
    expect(character.skills(:jump)).to eq 0
  end

  context 'with skill points available to spend' do
    it 'I can increment ranks on a skill' do
      character.increment_skill(:jump)
      expect(character.skills(:jump)).to eq 1
    end
  end

  context 'without skill points available to spend' do
    it 'I cannot increment ranks on a skill' do
      allow(character).to receive(:skill_points).and_return 0
      expect { character.increment_skill(:jump) }.to raise_error 'No skill points available'
    end
  end
end