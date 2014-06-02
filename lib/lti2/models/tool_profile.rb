module LTI2::Models
  class ToolProfile < LTI2Model
    add_attributes :lti_version, :base_url_choice
    add_attribute :id, json_key: '@id'
    add_attribute :product_instance, relation:'LTI2::Models::ProductInstance'
    add_attribute :base_url_choice, relation: 'LTI2::Models::BaseUrlChoice'
    add_attribute :resource_handler, relation:'LTI2::Models::ResourceHandler'
    add_attribute :message, relation:'LTI2::Models::MessageHandler'
    add_attribute :service_offered, relation:'LTI2::Models::RestService'
  end
end