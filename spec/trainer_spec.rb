require 'trainer'
require 'chikapu'

describe Trainer do

  subject {Trainer.new('trainer',[0,0])} 

  let(:chikapu) {Chikapu.new([0,0])}

  it 'initializes with a set position' do
    expect(subject.position).to eq [0,0]
  end

  it 'initializes with a set name' do
    expect(subject.name).to eq 'trainer'
  end

  it 'initializes with an empty collection' do
    expect(subject.collection).to eq []
  end

  it 'can change position' do
    subject.position = [1,1]
    expect(subject.position).to eq [1,1]
  end

  it 'can capture kudamon' do
    subject.capture(chikapu)
    expect(chikapu.captured).to eq true
    expect(subject.collection).to eq [chikapu]
  end
end