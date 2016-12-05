class Trainer

  attr_accessor :position, :name 

  def initialize name, position
    @name = name
    @position = position
    @collection = []
  end

  def capture kudamon
    if !kudamon.captured
      kudamon.captured = true
      @collection.push kudamon
    else
      raise 'this kudamon has already been captured by your or another trainer' 
    end
  end

  def collection
    @collection.clone
  end
end
