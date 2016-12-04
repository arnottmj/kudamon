require 'splashtoise'
require_relative './support/shared_examples_for_type_water'

describe Splashtoise do

  subject {Splashtoise.new([0,0])}

  it_behaves_like TypeWater 

  it 'initializes with a set position' do
    expect(subject.position).to eq [0,0]
  end

  it 'initializes as uncaptured' do
    expect(subject.captured).to eq false
  end
end