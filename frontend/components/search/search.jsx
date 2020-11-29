import React from 'react';
import { NavLink } from 'react-router-dom';

class Search extends React.Component {

  render() {
    let products = Object.values(this.props.products);

    function searchCount() {
      return (products.length === 0) ? '0' : `${products.length}`
    }
    
    function searchProducts() {
      return products.map((prod, idx) => {
        const { name, price, photo_url, description } = prod

        return(
          <NavLink to={{
            pathname: '/fish',
            aboutProps: {name, price, photo_url, description},
            key: {idx}
          }}> 
            <li key={idx} className='search-product'>
              <img src={prod.photo_url} alt="food"/>
              {prod.name}
            </li>
          </NavLink>

      )})
    }

    return (
      <section className="search-container">
        <h1>SEARCH RESULTS</h1>
        <h5 className="result-count">{searchCount()} results found.</h5>
        <ul className='search-list'>

          {searchProducts()}
        </ul>

      </section>
    )
  }
};

export default Search;