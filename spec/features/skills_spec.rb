require 'character'

describe 'Character skills' do
  let(:skill_set) { SkillSet.new }
  let(:character) { Character.new(skills: skill_set) }

  it 'I can view the value for a skill' do
    expect(character.skill(:jump)).to eq 0
  end

  context 'with skill points available to spend' do
    it 'I can increment ranks on a skill' do
      skill_set.increment_skill(:jump)
      expect(character.skill(:jump)).to eq 1
    end
  end

  context 'without skill points available to spend' do
    it 'I cannot increment ranks on a skill' do
      allow(skill_set).to receive(:skill_points).and_return 0
      expect { skill_set.increment_skill(:jump) }.to raise_error 'No skill points available'
    end
  end
end