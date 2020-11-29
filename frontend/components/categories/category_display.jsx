import React from 'react';
import { Link } from 'react-router-dom';
import ProductDisplay from '../products/product_display'

const CategoryDisplay = ({ category, products, productIds }) => {
  
  
  function propProds(id) {
    return <ProductDisplay product={products[id]} key={id} />
  };

  return (
    <div>
      
    <h1 id={`${category.id}_a`} className="category-title">{category.name}</h1>
    <section className="category-section">
      <div className="carousel-slide">
        { productIds.map(id => propProds(id)) }
      </div>
    </section>
    </div>
  )
  
};

export default CategoryDisplay;