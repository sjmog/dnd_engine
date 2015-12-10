require 'data_mapper'

class Skill
  include DataMapper::Resource

  property :id, Serial
  property :name, String
  property :ability, String

  def self.find_by_name(name)
  end
end