module LTI2::Models
  class Vendor < ActiveModel
    attr_accessor :id, :code, :vendor_name, :description, :website, :timestamp, :contact

  end
end