class Character
  attr_reader :race, :items, :abilities, :skills
  def initialize(race: Race.new, abilities: AbilitySet.new, classes: [BaseClass.new], skills: SkillSet.new, items: ItemSet.new)
    @race = race
    @abilities = abilities
    @skills = skills
    @classes = classes
    @items = items
  end

  def class_names
    classes.map(&:name)
  end

  private

  attr_reader :classes
end