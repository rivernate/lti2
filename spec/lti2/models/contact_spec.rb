require 'spec_helper'

module LTI2::Models
  describe Contact do

    it 'serializes to JSON' do
      subject.email = 'my_email@foo.com'
      json = subject.as_json
      expect(json).to eq({'email' => 'my_email@foo.com'})
    end

    it 'deserializes JSON' do
      subject.from_json('{"email": "my_email@fool.com"}')
      expect(subject.email).to eq "my_email@fool.com"
    end

  end
end