class Trainer

  attr_accessor :position, :name, :collection

  def initialize name, position
    @name = name
    @position = position
    @collection = []
  end

  def capture kudamon
    kudamon.captured = true
    @collection.push kudamon
  end
end
