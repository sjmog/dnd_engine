class SkillCheck
  def self.with(character, skill_name, difficulty_class)
    # Ranks
    skills = character.skills
    skill = skills.skill(skill_name)
    ranks_modifier = skill[:ranks]

    # Abilities
    abilities = character.abilities
    raw_ability_modifier = abilities.ability(skill[:ability])

    # Armor check
    if skill[:armor_check_penalty?]
      items = character.items
      armor = items.of_type(:armor)
      armor_check_penalty = armor.inject(0) { |sum, item| sum += item[:armour_check_penalty] }
    else
      armor_check_penalty = 0
    end

    # Race
    race = character.race
    race_ability_modifier = race.abilities[skill[:ability]] || 0
    race_skill_modifier = race.skills[skill_name]

    total_modifier = ranks_modifier + raw_ability_modifier + race_ability_modifier + race_skill_modifier - armor_check_penalty

    roll = Kernel.rand(1..20)
    roll + total_modifier >= difficulty_class
  end
end