module LTI2::Models
  class ServiceOwner < LTI2Model
    add_attribute :description, relation: 'LTI2::Models::LocalizedText'
    add_attribute :timestamp, json_converter:'LTI2::Converters::TimeJSONConverter'
    add_attribute :service_owner_name, relation: 'LTI2::Models::LocalizedName'

  end
end