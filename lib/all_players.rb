class AllPlayers

  attr_reader :list
  
  def initialize
    @list = []
  end

  def add_player player
    @list.push player
  end
end