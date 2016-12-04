require_relative 'type_water'

class Splashtoise

  include TypeWater

  attr_reader :position, :captured

  def initialize position
    @position = position
    @captured = false
  end
end