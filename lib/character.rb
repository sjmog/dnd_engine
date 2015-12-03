class Character
  def initialize(classes: [BaseClass.new], skills: SkillSet.new)
    @skills = skills
    @classes = classes
  end

  def skill(skill)
    skills.skill(skill)
  end

  def class_names
    classes.map(&:name)
  end

  private

  attr_reader :classes, :skills
end