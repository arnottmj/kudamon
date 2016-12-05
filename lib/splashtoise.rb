require_relative 'type_water'

class Splashtoise

  include TypeWater

  attr_accessor :captured

  def initialize position
    @position = position
    @captured = false
  end

  def position
    @position.clone
  end
end