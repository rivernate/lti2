module LTI2::Models
  class ToolProfile < LTI2Model
    add_attributes :lti_version
    add_attribute :id, json_key: '@id'
    add_attribute :product_instance, relation:'LTI2::Models::ProductInstance'
    add_attribute :base_url_choice, relation: 'LTI2::Models::BaseUrlChoice'
    add_attribute :resource_handler, relation:'LTI2::Models::ResourceHandler'
    add_attribute :message, relation:'LTI2::Models::MessageHandler'
    add_attribute :service_offered, relation:'LTI2::Models::RestService'


    def base_message_url
      if base_url_choice
        choice = base_url_choice.find { |choice| choice.default_message_url != '' }
        choice.default_message_url
      else
        ''
      end
    end

  end
end