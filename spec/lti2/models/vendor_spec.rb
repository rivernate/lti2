require 'spec_helper'

module LTI2::Models
  describe Vendor do

    it 'serializes to JSON' do
      subject.id = '1'
      subject.code = 'my_code'
      subject.vendor_name = double('vendor_name', as_json: {'json_key'=> 'json_value'})
      subject.description = double('description', as_json: {'json_key'=> 'json_value'})
      subject.website = 'http://some_website.invalid'
      subject.timestamp = Time.parse('2014-05-16T09:30:16.338-06:00')
      subject.contact = double('contact', as_json: {'json_key'=> 'json_value'})

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

    # it 'deserializes JSON' do
    #   Contact.any_instance.stub(:from_json) {'contact_email'}
    #   LocalizedText.any_instance.stub(:from_json) {'localized_text'}
    #   LocalizedName.any_instance.stub(:from_json) {'localized_name'}
    #   subject.from_json(fixture('models/vendor.json').read)
    #   expect(subject.id).to eq 'http://lms.example.com/'
    #   expect(subject.code).to eq 'lms.example.com'
    #   expect(subject.website).to eq 'http://lms.example.com/products/omega'
    #   expect(subject.timestamp.to_i).to eq Time.parse('2012-03-28T09:08:16-04:00').to_i
    #   expect(subject.vendor_name).to eq 'localized_name'
    #   expect(subject.description).to eq 'localized_text'
    # end

  end
end