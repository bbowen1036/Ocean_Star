import React from 'react';
import {
  Route,
  Redirect,
  Switch,
  Link,
  HashRouter
} from 'react-router-dom';

import GreetingContainer from './greeting/greeting_container';
import LoginFormContainer from './session_form/login_form_container';
import SessionFormContainer from './session_form/signup_form_container'

const App = () => {
  return (
    <div>
      <header>
        <h1>OCEANSTAR</h1>
        <GreetingContainer />
      </header>

      <Route path="/login" component={LoginFormContainer} />
      <Route path="/signup" component={SessionFormContainer} />

    </div>
  )
};

export default App;