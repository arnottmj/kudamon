class Trainer

  attr_accessor :position, :name 

  def initialize name, position
    @name = name
    @position = position
    @collection = []
  end

  def capture kudamon
    kudamon.captured = true
    @collection.push kudamon
  end

  def collection
    @collection.clone
  end
end
