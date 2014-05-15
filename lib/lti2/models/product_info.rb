module LTI2::Models
  class ProductInfo < ActiveModel
    attr_accessor :product_name, :product_version, :description, :technical_description, :product_family
  end
end