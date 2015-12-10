class SkillSet
  attr_reader :skill_points

  def initialize(skill_points: 0, ranks_table: { jump: 0 })
    @ranks_table = ranks_table
    @skill_points = skill_points
  end

  def skill(skill_name)
    skill = Skill.find_by_name(skill_name)
    {
      name: skill_name,
      ability: skill.ability,
      armor_check_penalty?: skill.armor_check_penalty,
      ranks: ranks_table[skill_name]
    }
  end

  def increment_skill(skill)
    raise 'No skill points available' unless skill_points > 0
    ranks_table[skill] += 1
  end

  private

  attr_reader :ranks_table
end