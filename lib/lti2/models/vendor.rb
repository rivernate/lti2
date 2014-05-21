module LTI2::Models
  class Vendor < LTI2Model

    add_attributes :code, :website
    add_attribute :id, json_key:'@id'
    add_attribute :contact, relation:'LTI2::Models::Contact'
    add_attribute :vendor_name, relation:'LTI2::Models::LocalizedName'
    add_attribute :description, relation:'LTI2::Models::LocalizedText'
    add_attribute :timestamp, json_converter: 'LTI2::Converters::TimeJSONConverter'

  end
end