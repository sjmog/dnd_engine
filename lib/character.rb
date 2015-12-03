class Character
  def initialize(abilities: AbilitySet.new, classes: [BaseClass.new], skills: SkillSet.new)
    @abilities = abilities
    @skills = skills
    @classes = classes
    @skill_points = 4
  end

  def ability(ability)
    abilities.ability(ability)
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

  attr_reader :abilities, :classes, :skills, :skill_points
end