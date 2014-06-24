module LTI2::Models
  class BaseUrlChoice < LTI2Model
    add_attributes :default_base_url, :secure_base_url
    add_attribute :selector, relation:'LTI2::Models::BaseUrlSelector'

    def default_message_url
      if selector && selector.applies_to && selector.applies_to.include?('MessageHandler')
        secure_base_url || default_base_url
      else
        ''
      end
    end

  end
end