module LTI2::Models
  class ServiceProvider < ActiveModel
    attr_accessor :id, :guid, :timestamp, :service_provider_name, :description, :support
  end
end