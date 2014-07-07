require 'spec_helper'

module LTI2::Models::Messages
  describe Message do
    it "returns params for the message" do
      subject.lti_message_type = 'message-type'
      subject.user_id = '123456'

      params = subject.post_params
      expect(params['lti_message_type']).to eq('message-type')
      expect(params['user_id']).to eq('123456')
    end
  end
end