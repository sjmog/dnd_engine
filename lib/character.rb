class Character
  def initialize(character_class = BaseClass.new(:fighter, 1))
    @skill_points = 4
    @skills_table = { jump: 0 }
    @character_class = character_class
  end

  def skills(skill)
    skills_table[skill]
  end

  def increment_skill(skill)
    raise 'No skill points available' unless skill_points > 0
    skills_table[skill] += 1
  end

  def class_name
    character_class.name
  end

  private

  attr_reader :skills_table, :skill_points, :character_class
end