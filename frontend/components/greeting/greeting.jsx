import React from 'react';
import { Link } from 'react-router-dom';

const Greeting = ({ currentUser, logout }) => {
  const sessionLinks = () => (
    <nav className="login-signup">
      <Link to="/login">Login</Link>
      &nbsp;or&nbsp;
      <Link to="/signup">Register</Link>
    </nav>
  );

  const personalGreeting = () => (
    <div className='header-group'>
      <h2 className="header-name">Welcome, {currentUser.first_name}</h2>
      <button className="header-button" onClick={logout}>Log Out</button>
    </div>
  );

  return currentUser ? personalGreeting() : sessionLinks();
};

export default Greeting;