module LTI2::Models
  class IconInfo < LTI2Model
    add_attributes :key, :icon_style
    add_attribute :default_location, relation: 'LTI2::Models::IconEndpoint'
  end
end
