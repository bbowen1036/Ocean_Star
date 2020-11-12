import * as APIUtil from '../util/categories_api_util';

export const RECEIVE_CATEGORY = 'RECEIVE_CATEGORY';

const receiveCategory = (category) => {
  return ({
    type: RECEIVE_CATEGORY,
    category
  })
};

export const getCategory = id => dispatch => (
  APIUtil.fetchCategory(id)
    .then(category => dispatch(receiveCategory(category)))
);