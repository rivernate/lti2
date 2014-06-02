module LTI2::Models
  class ResourceHandler < LTI2Model
    add_attribute :resource_type, relation: 'LTI2::Models::ResourceType'
    add_attribute :resource_name, relation: 'LTI2::Models::LocalizedName'
    add_attribute :description, relation: 'LTI2::Models::LocalizedText'
    add_attribute :message, relation: 'LTI2::Models::MessageHandler'
    add_attribute :icon_info, relation: 'LTI2::Models::IconInfo'
  end
end