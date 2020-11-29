json.set! @cart_item.id do
  prod = @cart_item.product
  json.extract! prod, :id, :name, :price
end
