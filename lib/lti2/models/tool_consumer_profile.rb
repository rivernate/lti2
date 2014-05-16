module LTI2::Models
  class ToolConsumerProfile < LTI2Model

    CONTEXT = "http://purl.imsglobal.org/ctx/lti/v2/ToolConsumerProfile"
    TYPE = "ToolConsumerProfile"

    add_attributes :id, :lti_version, :guid, :product_instance, :capability_offered, :service_offered


    def as_json(options={})
      result = super({except: [:id, :service_offered], include:[:product_instance, :service_offered]}.merge(options))
      result['@id'] = id
      result['@context'] = [CONTEXT]
      result['@type'] = TYPE
      result
    end

  end
end