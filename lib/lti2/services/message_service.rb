module LTI2::Services
  class MessageService
    include IMS::LTI::RequestValidator

    def initialize(consumer_secret)
      @consumer_secret = consumer_secret
    end


  end
end