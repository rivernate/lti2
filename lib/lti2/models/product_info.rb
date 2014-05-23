module LTI2::Models
  class ProductInfo < LTI2Model
    add_attribute :product_version
    add_attribute :product_family, relation: 'LTI2::Models::ProductFamily'
    add_attribute :description, relation: 'LTI2::Models::LocalizedText'
    add_attribute :product_name, relation: 'LTI2::Models::LocalizedName'
    add_attribute :technical_description, relation: 'LTI2::Models::LocalizedText'

    def create_product_name(name, key = 'product.name')
      @product_name = LocalizedName.new(name, key)
    end

    def create_description(name, key = 'product.description')
      @description = LocalizedText.new(name, key)
    end


  end
end