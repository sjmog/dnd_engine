require 'skill_set'

describe SkillSet do
  subject(:skill_set) { described_class.new }

  describe '#skill' do
    it 'returns the value for a skill' do
      expect(skill_set.skill(:jump)).to eq 0
    end
  end

  describe '#increment_skill' do
    it 'I can increment ranks on a skill' do
      skill_set.increment_skill(:jump)
      expect(skill_set.skill(:jump)).to eq 1
    end
  end
end