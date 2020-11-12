import React from "react";
import ReactDOM from "react-dom";

import configureStore from './store/store';
import Root from './components/root';

//test START//
import {login, logout, signup} from './actions/session_actions'
import {fetchAllProducts, fetchProduct, findProduct} from './actions/product_actions';
import { getCategory } from './actions/categories_actions'
//test END//

document.addEventListener("DOMContentLoaded", () => {

  
  let store;
  if (window.currentUser) {
    const preloadedState = {
      entities: {
        users: { [window.currentUser.id]: window.currentUser }
      },
      session: { id: window.currentUser.id }
    };
    store = configureStore(preloadedState);
    delete window.currentUser;
  } else {
    store = configureStore();
  }

  //test START//
  window.login = login;
  window.logout = logout;
  window.signup = signup;
  window.fetchAllProducts = fetchAllProducts;
  window.fetchProduct = fetchProduct;
  window.findProduct = findProduct;
  window.getCategory = getCategory
  window.getState = store.getState;
  window.dispatch = store.dispatch;
  //test END//
  
  
  const root = document.getElementById("root");
  ReactDOM.render(<Root store={store} />, root);
});
