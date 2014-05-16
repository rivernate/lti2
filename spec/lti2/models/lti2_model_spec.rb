require 'spec_helper'

module LTI2::Models
  describe LTI2Model do

    it 'adds attributes' do
      described_class.add_attributes(:one)
      model = described_class.new
      model.one = 1
      expect(model.one).to eq 1
    end

    it 'returns attributes' do
      described_class.add_attributes(:one, :two)
      model = described_class.new
      model.one = 1
      model.two = 2
      expect(model.attributes).to eq( {"one"=>1, "two"=>2} )
    end

    it 'sets attributes' do
      described_class.add_attributes(:one, :two)
      model = described_class.new
      model.attributes = {'one'=>1, 'two' => 2}
      expect(model.one).to eq 1
      expect(model.two).to eq 2
    end

    it 'sets attributes from symbol' do
      described_class.add_attributes(:one, :two)
      model = described_class.new
      model.attributes = {one:1, two:2}
      expect(model.one).to eq 1
      expect(model.two).to eq 2
    end

    it 'only sets the attributes sent' do
      described_class.add_attributes(:one, :two)
      model = described_class.new
      model.two = 2
      model.attributes = {one:1}
      expect(model.one).to eq 1
      expect(model.two).to eq 2
    end

  end
end