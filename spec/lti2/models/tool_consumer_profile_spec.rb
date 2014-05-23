require 'spec_helper'
module LTI2::Models
  describe ToolConsumerProfile do

    it 'should serialize to json' do
      subject.id = 'my_id'
      subject.lti_version = 'lti_v2p0'
      subject.guid = 'my_guid'
      subject.product_instance = double('product_instance', as_json: {'json_key'=> 'json_value'})
      subject.capability_offered = %w(123 abc)
      subject.service_offered = double('service_offered', as_json: {'json_key'=> 'json_value'})
      expect(subject.as_json).to eq({
                                      '@context' => [described_class::CONTEXT],
                                      '@type' => described_class::TYPE,
                                      '@id' => 'my_id',
                                      'lti_version' => 'lti_v2p0',
                                      'guid' => 'my_guid',
                                      'product_instance' => {'json_key'=> 'json_value'},
                                      'service_offered' => {'json_key'=> 'json_value'},
                                      'capability_offered' => %w(123 abc)
                                    })

    end
  end
end