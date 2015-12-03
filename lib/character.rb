class Character
  def initialize(classes: [BaseClass.new], skills: SkillSet.new)
    @skills = skills
    @classes = classes
    @skill_points = 4
  end

  def skill(skill)
    skills.skill(skill)
  end

  def increment_skill(skill)
    raise 'No skill points available' unless skill_points > 0
    skills.increment_skill(skill)
  end

  def class_names
    classes.map(&:name)
  end

  private

  attr_reader :classes, :skills, :skill_points
end