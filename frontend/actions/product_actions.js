import * as APIUtil from '../util/product_api_util';

export const RECEIVE_ALL_PRODUCTS = 'RECEIVE_ALL_PRODUCTS';
export const RECEIVE_PRODUCT = 'RECEIVE_PRODUCT';
export const FIND_PRODUCTS = 'FIND_PRODUCTS';

const receiveAllProducts = (products) => ({
  type: RECEIVE_ALL_PRODUCTS,
  products
});

const receiveProduct = (product) => ({
  type: RECEIVE_PRODUCT,
  product
});

const findProducts = (products) => ({
  type: FIND_PRODUCTS,
  products
})
 
export const fetchAllProducts = () => dispatch => (
  APIUtil.fetchAllProducts()
    .then(products => dispatch(receiveAllProducts(products)))
);

export const fetchProduct = (id) => dispatch => {
  return (
  APIUtil.getProduct(id)
    .then(product => dispatch(receiveProduct(product)))
)};

export const findProduct = (query) => dispach => (
  APIUtil.searchProductQuery(query)
    .then(products => dispach(findProducts(products)))
)