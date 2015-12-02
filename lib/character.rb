class Character
  def initialize
    @skill_points = 4
    @skills_table = { jump: 0 }
  end

  def skills(skill)
    skills_table[skill]
  end

  def increment_skill(skill)
    raise 'No skill points available' unless skill_points > 0
    skills_table[skill] += 1
  end

  private

  attr_reader :skills_table, :skill_points
end