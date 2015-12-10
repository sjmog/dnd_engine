class AbilitySet
  def initialize(strength: 10, dexterity: 10, constitution: 10, intelligence: 10, wisdom: 10, charisma: 10)
    @abilities_table = {
      strength: strength,
      dexterity: dexterity,
      constitution: constitution,
      intelligence: intelligence,
      wisdom: wisdom,
      charisma: charisma
    }
  end

  def ability(ability)
    raw_ability(ability).modifier
  end

  def increment_ability(ability)
    abilities_table[ability] += 1
  end

  private

  attr_reader :abilities_table

  def raw_ability(ability)
    abilities_table[ability]
  end
end