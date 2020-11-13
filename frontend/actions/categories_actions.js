import * as APIUtil from '../util/categories_api_util';

export const RECEIVE_CATEGORY = 'RECEIVE_CATEGORY';
export const RECEIVE_ALL_CATEGORIES = 'RECEIVE_ALL_CATEGORIES';

const receiveCategory = (category) => {
  return ({
    type: RECEIVE_CATEGORY,
    category
  })
};

const receiveAllCategories = (categories) => {
  
  return ({
    type: RECEIVE_ALL_CATEGORIES,
    categories
  })
}

export const getCategory = id => dispatch => (
  APIUtil.fetchCategory(id)
    .then(category => dispatch(receiveCategory(category)))
);

export const getAllCategories = () => dispatch => {
  return (
  APIUtil.fetchAllCategories()
    .then(categories => dispatch(receiveAllCategories(categories)))
)}