import React from 'react';
import { Link } from 'react-router-dom';
import { faUser } from '@fortawesome/free-solid-svg-icons'
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'


const Greeting = ({ currentUser, logout }) => {
  const sessionLinks = () => (
    <nav className="login-signup">
      <Link to="/login">
        <FontAwesomeIcon icon={faUser} size='2x' className="nav-icon user-icon"/>
      </Link> 
      <Link to="/login" className="login-link">Log In</Link>
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