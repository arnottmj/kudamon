shared_examples_for TypeElectric do

  describe 'type' do
    it 'return the type electric' do
      expect(subject.type).to eq 'Electric'
    end
  end
end