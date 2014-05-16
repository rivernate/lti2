require 'spec_helper'


module LTI2::Models
  describe LocalizedText do

    it 'serializes to json' do
      subject.default_value = 'default value'
      subject.key = 'key'
      expect(subject.as_json).to eq({
                                      'default_value' => 'default value',
                                      'key' => 'key'
                                    })
    end
  end
end