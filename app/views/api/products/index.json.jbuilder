@products.each do |product|
  json.set! product.id do
    json.extract! product, :name, :price, :category_id, :description
    
    if product.photo.attached? 
      json.photo_url url_for(product.photo)
    else
      json.photo_url ""
    end

  end
end
