module LTI2::Models
  class LTI2Model
    include ActiveModel::Serializers::JSON

    def attributes
      self.instance_values
    end

  end
end