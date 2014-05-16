module LTI2::Models
  class ProductInstance < LTI2Model
    attr_accessor :guid, :product_info, :service_owner, :service_provider, :support

    def as_json(options={})
      super({include:[:product_info, :service_owner, :service_provider, :support]}.merge(options))
    end

  end
end