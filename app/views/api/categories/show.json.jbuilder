json.set! @category.name do
  @category.products.each do |product|
    json.set! product.id do
      json.extract! product, :name, :price, :description
    end
  end
end