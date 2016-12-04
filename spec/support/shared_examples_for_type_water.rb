shared_examples_for TypeWater do

  describe 'type' do
    it 'return the type water' do
      expect(subject.type).to eq 'Water'
    end
  end
end