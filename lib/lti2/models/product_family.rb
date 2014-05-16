module LTI2::Models
  class ProductFamily < LTI2Model
    attr_accessor :code, :vendor

    def as_json(options={})
      super({include:[:vendor]}.merge(options))
    end

  end
end