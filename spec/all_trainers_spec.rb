require 'all_trainers'

describe AllTrainers do

  let(:trainer) {double :trainer}
  
  it 'can store players' do
    subject.add_player(:trainer)
    expect(subject.list).to eq [:trainer]
  end
end