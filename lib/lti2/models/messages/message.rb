module LTI2::Models::Messages
  class Message < LTI2::Models::LTI2Model
    LAUNCH_TARGET_IFRAME = 'iframe'
    LAUNCH_TARGET_WINDOW = 'window'

    add_attributes :lti_message_type, :lti_version, :user_id, :roles, :launch_presentation_local,
                   :launch_presentation_document_target, :launch_presentation_css_url, :launch_presentation_width,
                   :launch_presentation_height



  end
end