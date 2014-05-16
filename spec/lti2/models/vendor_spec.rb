require 'spec_helper'

module LTI2::Models
  describe Vendor do

    it 'serializes to JSON' do
      subject.id = '1'
      subject.code = 'my_code'
      subject.vendor_name = double('vendor_name', serializable_hash: {'json_key'=> 'json_value'})
      subject.description = double('description', serializable_hash: {'json_key'=> 'json_value'})
      subject.website = 'http://some_website.invalid'
      subject.timestamp = Time.parse('2014-05-16T09:30:16.338-06:00')
      subject.contact = double('contact', serializable_hash: {'json_key'=> 'json_value'})

      json = subject.as_json
      timestamp = json.delete('timestamp')
      expect(timestamp.to_i).to eq Time.parse('2014-05-16 09:30:16 -0600').to_i
      expect(json).to eq(
                        {
                          "code" => "my_code",
                          "vendor_name" => { "json_key" => "json_value" },
                          "description" => { "json_key" => "json_value" },
                          "website" => "http://some_website.invalid",
                          "contact" => { "json_key" => "json_value" },
                          "@id" => '1'
                        }
                      )
    end

  end
end