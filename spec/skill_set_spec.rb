require 'skill_set'

describe SkillSet do
  subject(:skill_set) { described_class.new }

  describe '#skill' do
    it 'returns the value for a skill' do
      expect(skill_set.skill(:jump)).to eq 0
    end
  end

  describe '#increment_skill' do
    context 'with skill points available to spend' do
      it 'I can increment ranks on a skill' do
        skill_set.increment_skill(:jump)
        expect(skill_set.skill(:jump)).to eq 1
      end
    end

    context 'without skill points available to spend' do
      it 'I cannot increment ranks on a skill' do
        allow(skill_set).to receive(:skill_points).and_return 0
        expect { skill_set.increment_skill(:jump) }.to raise_error 'No skill points available'
      end
    end
  end
end