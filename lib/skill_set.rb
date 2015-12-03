class SkillSet
  def initialize
    @skill_points = 4
    @ranks_table = { jump: 0 }
  end

  def skill(skill)
    ranks_table[skill]
  end

  def increment_skill(skill)
    raise 'No skill points available' unless skill_points > 0
    ranks_table[skill] += 1
  end

  private

  attr_reader :ranks_table, :skill_points
end