module LTI2::Models
  class ProductFamily < LTI2Model
    add_attributes :code, :vendor

    def as_json(options={})
      super({include:[:vendor]}.merge(options))
    end

  end
end