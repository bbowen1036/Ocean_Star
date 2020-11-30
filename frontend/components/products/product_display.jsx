import React from 'react';
import { NavLink } from 'react-router-dom'

const ProductDisplay = ({ product }) => {
  
  const { name, price, photo_url, description } = product;
  
  return(
    <div className='product-display'>
      <NavLink to={{
        pathname: '/fish',
        aboutProps: {name, price, photo_url, description}
      }}>
        <img className='product-img-splash' src={photo_url} alt=""/>

        <h5>{name}</h5>
      </NavLink>
      <h6>${parseFloat(price).toFixed(2)}</h6>
      <button className="product-btn">Add to Cart</button>
    </div>
  )
};

export default ProductDisplay;