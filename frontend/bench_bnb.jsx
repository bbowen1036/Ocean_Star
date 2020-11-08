import React from "react";
import ReactDOM from "react-dom";

//test//
import { signup, login, logout} from './util/session_api_util'

document.addEventListener("DOMContentLoaded", () => {
  const root = document.getElementById("root");
  ReactDOM.render(<h1>OCEAN STAR</h1>, root);



  //test//
  window.login = login;
  window.logout = logout;
  window.signup = signup;
});