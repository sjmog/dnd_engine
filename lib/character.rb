class Character
  def initialize
    @skills_table = { jump: 0 }
  end

  def skills(skill)
    skills_table[skill]
  end

  def increment_skill(skill)
    skills_table[skill] += 1
  end

  private

  attr_reader :skills_table
end