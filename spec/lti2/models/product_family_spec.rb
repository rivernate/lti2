require 'spec_helper'

module LTI2::Models
  describe ProductFamily do

    it 'serializes to JSON' do
      subject.code = 'my_code'
      subject.vendor = double('vendor', serializable_hash: {'json_key'=> 'json_value'})
      expect(subject.as_json).to eq ({
        'code' => 'my_code',
        'vendor' => {'json_key' => 'json_value'}
      })
    end

  end
end