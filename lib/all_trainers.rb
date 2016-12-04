class AllTrainers

  attr_reader :list
  
  def initialize
    @list = []
  end

  def add_player trainer
    @list.push trainer
  end
end