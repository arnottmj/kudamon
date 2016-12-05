require_relative 'type_electric'

class Chikapu

  include TypeElectric

  attr_accessor :captured

  def initialize position
    @position = position
    @captured = false
  end

  def position
    @position.clone
  end
end