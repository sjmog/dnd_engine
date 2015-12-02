class BaseClass
  attr_reader :name, :level

  def initialize(name = :fighter, level = 1)
    @name = name
    @level = level
  end
end