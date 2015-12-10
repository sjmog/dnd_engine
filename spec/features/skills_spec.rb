require 'character'

describe 'Character skills' do
  let(:skill_set) { SkillSet.new }

  it 'I can view the value for a skill' do
    expect(skill_set.skill(:jump)).to eq 0
  end

  context 'with skill points available to spend' do
    let(:skill_set_with_points) { SkillSet.new(skill_points: 8) }

    it 'I can increment ranks on a skill' do
      skill_set_with_points.increment_skill(:jump)
      expect(skill_set_with_points.skill(:jump)).to eq 1
    end
  end

  context 'without skill points available to spend' do
    it 'I cannot increment ranks on a skill' do
      expect { skill_set.increment_skill(:jump) }.to raise_error 'No skill points available'
    end
  end
end