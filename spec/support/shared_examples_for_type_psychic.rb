shared_examples_for TypePsychic do

  describe 'type' do
    it 'return the type psychic' do
      expect(subject.type).to eq 'Psychic'
    end
  end
end