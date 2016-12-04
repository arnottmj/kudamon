require 'mancharred'
require_relative './support/shared_examples_for_type_fire'

describe Mancharred do

  subject {Mancharred.new([0,0])}

  it_behaves_like TypeFire 

  it 'initializes with a set position' do
    expect(subject.position).to eq [0,0]
  end

  it 'initializes as uncaptured' do
    expect(subject.captured).to eq false
  end
end