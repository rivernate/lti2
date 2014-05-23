module LTI2::Models
  class LocalizedName < LTI2Model
    add_attributes :default_value, :key

    def initialize(default_value = nil, key = nil)
      @default_value = default_value
      @key = key
    end

  end
end