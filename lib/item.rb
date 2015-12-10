class Item
  attr_reader :type, :armor_check_penalty
  def initialize(opts = {})
    @type = opts.fetch(:type, :misc)
    @armor_check_penalty = opts[:armor_check_penalty]
  end
end