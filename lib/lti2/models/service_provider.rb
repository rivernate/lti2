module LTI2::Models
  class ServiceProvider < LTI2Model
    add_attribute :guid
    add_attribute :id, json_key:'@id'
    add_attribute :service_provider_name, relation:'LTI2::Models::LocalizedName'
    add_attribute :description, relation:'LTI2::Models::LocalizedText'
    add_attribute :support, relation:'LTI2::Models::Contact'
    add_attribute :timestamp, json_converter: 'LTI2::Converters::TimeJSONConverter'

  end
end