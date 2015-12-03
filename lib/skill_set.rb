class SkillSet
  def initialize
    @ranks_table = { jump: 0 }
  end

  def skill(skill)
    ranks_table[skill]
  end

  def increment_skill(skill)
    ranks_table[skill] += 1
  end

  private

  attr_reader :ranks_table
end