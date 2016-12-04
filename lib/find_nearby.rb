require 'nearby_coords'

class FindNearby

  def self.search all_kudamon, player 
    nearby_coords = NearbyCoords.search(player)
    nearby_kudamon = []

    all_kudamon.list.each do |kudamon|
      if (nearby_coords.include? kudamon.position) && !kudamon.captured
        nearby_kudamon.push kudamon
      end
    end

    nearby_kudamon
  end 
end