module LTI2::Models
  class ProductInfo < LTI2Model
    add_attributes :product_version
    add_attribute :product_family, relation: 'LTI2::Models::ProductFamily'
    add_attribute :description, relation: 'LTI2::Models::LocalizedText'
    add_attribute :product_name, relation: 'LTI2::Models::LocalizedName'
    add_attribute :technical_description, relation: 'LTI2::Models::LocalizedText'

  end
end