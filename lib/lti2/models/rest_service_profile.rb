module LTI2::Models
  class RestServiceProfile < LTI2Model
    add_attributes :service, :action
    add_attribute :type, json_key: '@type'

  end
end