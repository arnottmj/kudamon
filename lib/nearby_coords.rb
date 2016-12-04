class NearbyCoords
  class << self

    def search player
      player_position = player.position
      x_coords = nearby_x_coords(player_position)
      y_coords = nearby_y_coords(player_position)
      nearby_coords = []

      x_coords.each do |x|
        nearby_coords.push [x, y_coords[-1]]
        nearby_coords.push [x, y_coords[0]]
        nearby_coords.push [x, y_coords[1]]
      end

      nearby_coords
    end

    private

    def nearby_x_coords player_position

      coords = [player_position[0] - 1, player_position[0], player_position[0] + 1]
      coords
    end

    def nearby_y_coords player_position
      coords = [player_position[1] - 1, player_position[1], player_position[1] + 1]
      coords
    end
  end
end
