module LTI2::Models
  class RestService < LTI2Model
    TYPE = 'RestService'

    attr_accessor :id, :endpoint, :format, :action

    def as_json(options={})
      result = super({except: :id}.merge(options))
      result['@id'] = id
      result['@type'] = TYPE
    end

  end
end