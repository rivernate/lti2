module LTI2::Models
  class ServiceOwner < LTI2Model
    attr_accessor :timestamp, :service_owner_name, :description

    def as_json(options={})
      super({include:[:service_owner_name, :description]}.merge(options))
    end

  end
end