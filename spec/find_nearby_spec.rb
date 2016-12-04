require 'find_nearby'

describe FindNearby do

  context 'when kudamon are nearby' do

    let(:chikapu) {double :chikapu, position: [1,1], captured: false}
    let(:rockdude) {double :rockdude, position: [1,-1], captured: false}
    let(:trainer) {double :trainer, position: [0,0]}
    let(:all_kudamon) {double :all_kudamon, list: [chikapu, rockdude]}

    it 'will return an array of nearby kudamon' do
      expect(FindNearby.search(all_kudamon, trainer)).to eq [chikapu, rockdude]
    end
  end

  context 'when kudamon are not nearby' do

    let(:mewpu) {double :mewpu, position: [2,2], captured: false}
    let(:trainer) {double :trainer, position: [0,0]}
    let(:all_kudamon) {double :all_kudamon, list: [mewpu]}

    it 'will return an empty array' do
      expect(FindNearby.search(all_kudamon, trainer)).to eq []
    end
  end

  context 'when nearby kudamon are already captured' do
    let(:sourbulb) {double :sourbulb, position: [1,1], captured: true}
    let(:trainer) {double :trainer, position: [0,0]}
    let(:all_kudamon) {double :all_kudamon, list: [sourbulb]}

    it 'will return an empty array' do
      expect(FindNearby.search(all_kudamon, trainer)).to eq []
    end
  end
end
