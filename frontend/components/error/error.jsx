import React from 'react';
import { NavLink } from 'react-router-dom';
 
const Error = () => {
  return (
    <div>
      
      <div className="error-container">
        <h3 className="error-404">404</h3>
        <p className="error-description">
          The page you are looking for cannot be found.
        </p>
        <NavLink className="error-button" to="/">BACK TO HOMEPAGE</NavLink>
      </div>
    </div>
  )
}

export default Error