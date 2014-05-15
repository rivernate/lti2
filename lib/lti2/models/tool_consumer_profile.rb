module LTI2::Models
  class ToolConsumerProfile < ActiveModel

    CONTEXT = "http://purl.imsglobal.org/ctx/lti/v2/ToolConsumerProfile"
    TYPE = "ToolConsumerProfile"

    attr_accessor :id, :lti_version, :guid, :product_instance, :capability_offered, :service_offered

  end
end