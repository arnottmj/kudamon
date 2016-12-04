require 'all_kudamon'

describe AllKudamon do

  let(:chikapu) {double :chikapu}

  it 'can store kudamon' do
    subject.add_kudamon(:chikapu)
    expect(subject.list).to eq [:chikapu]
  end
end