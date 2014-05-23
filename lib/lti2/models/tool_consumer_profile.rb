module LTI2::Models
  class ToolConsumerProfile < LTI2Model

    CONTEXT = "http://purl.imsglobal.org/ctx/lti/v2/ToolConsumerProfile"
    TYPE = "ToolConsumerProfile"

    LTI_VERSION_2P0 = 'LTI-2p0'

    add_attributes :lti_version, :guid, :capability_offered
    add_attribute :id, json_key:'@id'
    add_attribute :type, json_key:'@type'
    add_attribute :context, json_key:'@context'
    add_attribute :product_instance, relation:'LTI2::Models::ProductInstance'
    add_attribute :service_offered, relation: 'LTI2::Models::RestService'

    def initialize
      @context = [CONTEXT]
      @type = TYPE
    end

  end
end