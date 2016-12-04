shared_examples_for TypeRock do

  describe 'type' do
    it 'return the type rock' do
      expect(subject.type).to eq 'Rock'
    end
  end
end