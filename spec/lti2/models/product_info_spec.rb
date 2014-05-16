require 'spec_helper'

module LTI2::Models
  describe ProductInfo do

    it 'serializes to JSON' do
      subject.product_name = double('description', serializable_hash: {'json_key'=> 'json_value'})
      subject.product_version = '1.0'
      subject.description = double('description', serializable_hash: {'json_key'=> 'json_value'})
      subject.technical_description = double('technical_description', serializable_hash: {'json_key'=> 'json_value'})
      subject.product_family = double('product_family', serializable_hash: {'json_key'=> 'json_value'})

      expect(subject.as_json).to eq({
                                      'product_name' => {'json_key' => 'json_value'},
                                      'product_version' => '1.0',
                                      'description' => {'json_key' => 'json_value'},
                                      'technical_description' => {'json_key' => 'json_value'},
                                      'product_family' => {'json_key' => 'json_value'}
                                    })

    end

  end
end