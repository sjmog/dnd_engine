require 'skill_set'

describe SkillSet do
  subject(:skill_set) { described_class.new }
  subject(:skill_set_with_points) { described_class.new(skill_points: 8) }

  it 'stores ranks for skills' do
    sneaky_skill_set = described_class.new(ranks_table: { move_silently: 4 })
    expect(sneaky_skill_set.skill(:move_silently)).to eq 4
  end

  describe '#skill' do
    it 'returns a hash for a skill' do
      expected_skill = { name: :jump, ability: :strength, armor_check_penalty?: true, ranks: 0 }
      expect(skill_set.skill(:jump)).to eq 0
    end
  end

  describe '#skill_points' do
    it 'stores the number of skill points available' do
      expect(skill_set_with_points.skill_points).to eq 8
    end
  end

  describe '#increment_skill' do
    context 'with skill points available' do
      it 'increments ranks on a skill' do
        skill_set_with_points.increment_skill(:jump)
        expect(skill_set_with_points.skill(:jump)).to eq 1
      end
    end

    context 'with no skill points available' do
      it 'raises an error' do
        expect { skill_set.increment_skill(:jump) }.to raise_error 'No skill points available'
      end
    end
  end
end