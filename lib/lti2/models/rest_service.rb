module LTI2::Models
  class RestService < LTI2Model
    TYPE = 'RestService'

    add_attributes :endpoint, :format, :action
    add_attribute :id, json_key:'@id'
    add_attribute :type, json_key: '@type'

    def initialize
      @type = TYPE
    end

  end
end