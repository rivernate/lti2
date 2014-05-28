module LTI2::Models::Messages
  class BasicLTILaunchRequest < LTI2::Models::LTI2Model

    add_attributes :context_id, :context_type, :launch_presentation_return_url, :resource_link_id, :role_scope_mentor,
                   :tool_consumer_instance_guid, :user_image

  end
end