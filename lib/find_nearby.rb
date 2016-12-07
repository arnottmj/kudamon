require_relative 'nearby_coords'

class FindNearby

  def initialize all_kudamon
    @all_kudamon = all_kudamon
  end

  def search trainer, coord_finder = NearbyCoords 
    nearby_coords = coord_finder.search(trainer)
    nearby_kudamon = []

    @all_kudamon.list.each do |kudamon|
      if (nearby_coords.include? kudamon.position) && !kudamon.captured
        nearby_kudamon.push kudamon
      end
    end

    nearby_kudamon
  end 
end