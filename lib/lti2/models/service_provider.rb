module LTI2::Models
  class ServiceProvider < LTI2Model
    attr_accessor :id, :guid, :timestamp, :service_provider_name, :description, :support

    def as_json(options={})
      result = super({except: :id, include: [:service_provider_name, :description, :support]}.merge(options))
      result['@id'] = id
      result
    end

  end
end