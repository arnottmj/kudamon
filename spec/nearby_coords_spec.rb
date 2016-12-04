require 'nearby_coords'

describe NearbyCoords do
  
  let(:trainer) {double :trainer, position: [0,0]}

  it 'returns a set of coordinates around the player' do
    expect(NearbyCoords.search(trainer)).to eq [[-1,1],
                                                [-1,-1],
                                                [-1,0],
                                                [0,1],
                                                [0,-1],
                                                [0,0],
                                                [1,1],
                                                [1,-1],
                                                [1,0]]
  end
end