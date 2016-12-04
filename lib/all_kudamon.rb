class AllKudamon

  attr_reader :list
  
  def initialize
    @list = []
  end

  def add_kudamon kudamon
    @list.push kudamon
  end
end