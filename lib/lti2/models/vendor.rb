module LTI2::Models
  class Vendor < LTI2Model

    add_attributes :id, :code, :vendor_name, :description, :website, :timestamp, :contact

    def as_json(options={})
      result = super({except: :id, include:[:contact, :vendor_name, :description]}.merge(options))
      result['@id'] = id
      result
    end

  end
end