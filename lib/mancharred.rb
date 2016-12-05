require_relative 'type_fire'

class Mancharred

  include TypeFire

  attr_accessor :captured

  def initialize position
    @position = position
    @captured = false
  end

  def position
    @position.clone
  end
end