module LTI2::Models
  class ProductInfo < LTI2Model
    add_attributes :product_name, :product_version, :description, :technical_description, :product_family

    def as_json(options={})
      super({include:[:product_family, :description, :product_name, :technical_description]}.merge(options))
    end

  end
end