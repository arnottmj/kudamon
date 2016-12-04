require 'all_players'

describe AllPlayers do

  let(:player) {double :player}
  
  it 'can store players' do
    subject.add_player(:player)
    expect(subject.list).to eq [:player]
  end
end