require 'spec_helper'

module LTI2::Models
  describe Contact do

    it 'serializes to JSON' do
      subject.email = 'my_email@foo.com'
      json = subject.as_json
      expect(json).to eq({'email' => 'my_email@foo.com'})
    end
  end
end