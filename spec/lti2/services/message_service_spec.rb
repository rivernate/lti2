require 'spec_helper'

module LTI2::Services
  describe MessageService do
    let(:key) {'key'}
    let(:secret) {'secret'}

    subject {MessageService.new(key, secret)}

    describe "#signed_params" do
      it "creates a hash with the oauth signature" do
        message = LTI2::Models::Messages::Message.new
        message.user_id = 'user_id'

        params = subject.signed_params('http://www.example.com', message)

        expect(params['oauth_consumer_key']).to eq "key"
        expect(params['oauth_signature_method']).to eq "HMAC-SHA1"
        expect(params['oauth_version']).to eq "1.0"
        # expect(params['user_id']).to eq "user_id"
        expect(params.key?('oauth_signature')).to eq true
        expect(params.key?('oauth_timestamp')).to eq true
        expect(params.key?('oauth_nonce')).to eq true
        expect(params.key?('oauth_body_hash')).to eq true
      end
    end

    describe "#valid_signature?" do
      it "returns true for a valid signature" do
        message = LTI2::Models::Messages::Message.new
        params = subject.signed_params('http://www.example.com', message)

        expect(subject.valid_signature?('http://www.example.com', params)).to eq true
      end

      it "returns false for an invalid signature" do
        message = LTI2::Models::Messages::Message.new
        params = subject.signed_params('http://www.example.com', message)

        expect(subject.valid_signature?('http://www.wrong.com', params)).to eq false
      end
    end

    describe "#message" do
      it "creates basic-lti-launch-request messages", :pending do
        message = subject.message(params)
      end
    end

  end
end