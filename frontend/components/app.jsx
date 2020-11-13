import React from 'react';
import {
  Route,
  Redirect,
  Switch,
  Link,
  HashRouter
} from 'react-router-dom';

import LoginFormContainer from './session_form/login_form_container';
import SessionFormContainer from './session_form/signup_form_container';
import HomeContainer from './home/home_container';
import NavbarContainer from './navbar/navbar_container'
import { AuthRoute, ProtectedRoute } from '../util/route_util';

const App = () => {
  return (
    <div>
      <header>
        <NavbarContainer />
      </header>
      <Switch>
        <AuthRoute exact path="/login" component={LoginFormContainer} />
        <AuthRoute exact path="/signup" component={SessionFormContainer} />
        <Route path='/' component={HomeContainer} />
      </Switch>
    </div>
  )
};

export default App;