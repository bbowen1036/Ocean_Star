
export const fetchAllProducts = () => {
  return (
    $.ajax ({
      method: 'GET',
      url: '/api/products'
    })
  )
};

export const getProduct = (id) => {
  return (
    $.ajax({
      method: 'GET',
      url: `/api/products/${id}`
    })
  )
};

export const searchProductQuery = (query) => {
  return (
    $.ajax({
      method: 'GET',
      url: `/api/products_search?query=${query}`
    })
  )
};