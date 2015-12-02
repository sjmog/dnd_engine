class SkillCheck
  def self.with(character, skill, difficulty_class)
    roll = Kernel.rand(1..20)
    roll + character.skills(skill) >= difficulty_class
  end
end