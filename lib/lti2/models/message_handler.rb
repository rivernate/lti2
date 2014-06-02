module LTI2::Models
  class MessageHandler < LTI2Model
    add_attributes :message_type, :path, :enabled_capability, :parameter
    add_attribute :parameter, relation:'LTI2::Models::Parameter'

  end
end