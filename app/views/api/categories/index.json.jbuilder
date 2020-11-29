@categories.each do |category|
  products = category.products
  # json.categories do
    json.set! category.id do
      json.extract! category, :id, :name
      json.productId do
        ids = products.map{|product| product.id}
        json.array! ids
      end
    end
  # end
  # json.products do
  #   products.each do |product|
  #       json.set! product.id do
  #           json.extract! product, :id, :name, :price
  #           # json.imgUrl url_for(product.photo)
  #       end
  #   end
  # end
end