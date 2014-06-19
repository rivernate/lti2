module LTI2::Models
  class ToolProxy < LTI2Model
    add_attributes :lti_version, :tool_proxy_guid, :custom, :custom_url, :enabled_capability
    add_attribute :context, json_key:'@context'
    add_attribute :type, json_key:'@type'
    add_attribute :id, json_key:'@id'
    add_attribute :tool_consumer_profile #, relation:'LTI2::Models::ToolConsumerProfile'
    add_attribute :tool_profile, relation:'LTI2::Models::ToolProfile'
    add_attribute :security_contract, relation:'LTI2::Models::SecurityContract'
  end
end