module LTI2::Models
  class RestService < ActiveModel
    attr_accessor :id, :endpoint, :format, :action
  end
end