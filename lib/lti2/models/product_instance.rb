module LTI2::Models
  class ProductInstance < ActiveModel
    attr_accessor :guid, :product_info, :service_owner, :service_provider, :support
  end
end