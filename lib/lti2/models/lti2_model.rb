module LTI2::Models
  class LTI2Model
    include ActiveModel::Serializers::JSON

    def self.add_attributes(attribute, *attrs)
      attrs.unshift(attribute)
      self.attributes = self.attributes + attrs
      attr_accessor(attrs.shift, *attrs)
    end

    def attributes
      attribs = {}
      self.class.attributes.each{|a| attribs[a.to_s] = instance_variable_get("@#{a.to_s}")}
      attribs
    end

    def attributes=(attrs)
      attrs.each do |k, v|
        instance_variable_set("@#{k.to_s}", v)
      end
    end

    private

    def self.attributes
      @attributes || []
    end

    def self.attributes=(attribs)
      @attributes = attribs
    end

  end
end