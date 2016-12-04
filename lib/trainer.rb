class Trainer

  attr_reader :collection, :name
  attr_accessor :position

  def initialize name, position
    @name = name
    @position = position
    @collection = []
  end
end