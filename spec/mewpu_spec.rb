require 'mewpu'
require_relative './support/shared_examples_for_type_psychic'

describe Mewpu do

  subject {Mewpu.new([0,0])}

  it_behaves_like TypePsychic 

  it 'initializes with a set position' do
    expect(subject.position).to eq [0,0]
  end

  it 'initializes as uncaptured' do
    expect(subject.captured).to eq false
  end
end