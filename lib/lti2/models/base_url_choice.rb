module LTI2::Models
  class BaseUrlChoice < LTI2Model
    add_attributes :default_base_url, :secure_base_url
    add_attribute :selector, relation:'LTI2::Models::BaseUrlSelector'

  end
end