require 'find_nearby'

describe FindNearby do

  context 'when kudamon are nearby' do

    let(:chikapu) {double :chikapu, position: [1,1], captured: false}
    let(:rockdude) {double :rockdude, position: [1,-1], captured: false}
    let(:trainer) {double :trainer, position: [0,0]}
    let(:all_kudamon) {double :all_kudamon, list: [chikapu, rockdude]}

    subject {FindNearby.new(all_kudamon)}

    it 'will return an array of nearby kudamon' do
      expect(subject.search(trainer)).to eq [chikapu, rockdude]
    end
  end

  context 'when kudamon are not nearby' do

    let(:mewpu) {double :mewpu, position: [2,2], captured: false}
    let(:trainer) {double :trainer, position: [0,0]}
    let(:all_kudamon) {double :all_kudamon, list: [mewpu]}

    subject {FindNearby.new(all_kudamon)}

    it 'will return an empty array' do
      expect(subject.search(trainer)).to eq []
    end
  end

  context 'when nearby kudamon are already captured' do
    let(:sourbulb) {double :sourbulb, position: [1,1], captured: true}
    let(:trainer) {double :trainer, position: [0,0]}
    let(:all_kudamon) {double :all_kudamon, list: [sourbulb]}

    subject {FindNearby.new(all_kudamon)}

    it 'will return an empty array' do
      expect(subject.search(trainer)).to eq []
    end
  end
end
