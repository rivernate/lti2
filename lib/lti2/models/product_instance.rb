module LTI2::Models
  class ProductInstance < LTI2Model
    add_attributes :guid
    add_attribute :product_info, relation:'LTI2::Models::ProductInfo'
    add_attribute :service_owner, relation:'LTI2::Models::ServiceOwner'
    add_attribute :support, relation:'LTI2::Models::ServiceProvider'
    add_attribute :service_provider, relation:'LTI2::Models::Contact'

  end
end