module LTI2::Models
  class ProductFamily < LTI2Model
    add_attributes :code
    add_attribute :id, json_key: '@id'
    add_attribute :vendor, relation: 'LTI2::Models::Vendor'

  end
end