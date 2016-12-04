require_relative 'type_electric'

class Chikapu

  include TypeElectric

  attr_reader :position, :captured

  def initialize position
    @position = position
    @captured = false
  end
end