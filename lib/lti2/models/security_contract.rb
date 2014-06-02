module LTI2::Models
  class SecurityContract < LTI2Model

    add_attribute :shared_secret
    add_attribute :tool_service, relation: 'LTI2::Models::RestServiceProfile'
    add_attribute :end_user_service, relation: 'LTI2::Models::RestServiceProfile'

  end
end