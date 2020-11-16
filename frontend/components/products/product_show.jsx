import React from 'react';

const ProductShow = (props) => {

  const price = props.location.aboutProps.price
  
  return (

    <section className="show-container">
        <img src={props.location.aboutProps.photo_url} alt=""/>
        <div className='show-description'>

          <div className="show-product-meta">
            <h2>Ocean Star Seafood</h2>
            <h1>{props.location.aboutProps.name}</h1>
            <h4 className="show-price">${parseFloat(price).toFixed(2)}</h4>         
            <p className="show-description">{props.location.aboutProps.description}</p>
          </div>
          <div className="show-product-form">
            <label>Quantity:</label>
            <input type="number" min="1" max="100" placeholder="1"/>
            <button>ADD TO CART</button>
          </div>
        </div>
        
    </section>
  )
};

export default ProductShow