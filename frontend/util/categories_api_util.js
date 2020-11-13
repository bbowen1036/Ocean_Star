export const fetchCategory = (id) => {
  return (
    $.ajax({
      method: 'GET',
      url: `/api/categories/${id}`
    })
  )
};

export const fetchAllCategories = () => {
  return (
    $.ajax({
      method: "GET",
      url: '/api/categories'
    })
  )
};