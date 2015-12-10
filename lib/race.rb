class Race
  attr_reader :abilities, :skills
  def initialize(abilities: {}, skills: {})
    @abilities = abilities
    @skills = skills
  end
end