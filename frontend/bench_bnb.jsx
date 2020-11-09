import React from "react";
import ReactDOM from "react-dom";

import configureStore from './store/store';

//test//
import {login, logout, signup} from './actions/session_actions'

document.addEventListener("DOMContentLoaded", () => {

  
  let store = configureStore();
  //test START//
  window.login = login;
  window.logout = logout;
  window.signup = signup;
  window.getState = store.getState;
  window.dispatch = store.dispatch;
  //test END//
  
  
  const root = document.getElementById("root");
  ReactDOM.render(<h1>OCEAN STARr</h1>, root);
});
