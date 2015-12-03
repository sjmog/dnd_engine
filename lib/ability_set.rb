class AbilitySet
  def initialize
    @abilities_table = {
      strength: 10,
      dexterity: 10,
      constitution: 10,
      intelligence: 10,
      wisdom: 10,
      charisma: 10
    }
  end

  def ability(ability)
    abilities_table[ability]
  end

  private

  attr_reader :abilities_table
end