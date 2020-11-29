import React from 'react';
import { Link } from 'react-router-dom';
import CategoryDisplay from '../categories/category_display';
import StaticHeader from './static_section';

class Home extends React.Component {
  constructor(props){
    super(props)
  }

  componentDidMount() {
    this.props.getAllCategories()
    this.props.fetchAllProducts()
  }

  render() {
    const { categories, products } = this.props;

    function propProds(category) {
      return <CategoryDisplay  key={category.id} category={category} productIds={category.productId} products={products}/>
    }
    return (
      <div>
        <section className="carousel">
          
          <div className="main-title">
            <h2>chef-driven</h2>
            <h2>chef-curated</h2>
            <h2>marketplace</h2>
            <h4>fresh local sustainable</h4>
            <h2 className="h2-last">home delivery</h2>
          </div>
          
          <button className="main-shop">shop now</button>
          <footer className="carousel-footer">
            <h4>free delivery for orders over $100  within our sf bay area delivery zone</h4>
            <h4>and flat-rate shipping nationally.</h4>
          </footer>
        </section>
        <StaticHeader />

        <ul className="all-categories">
        {Object.values(categories).map((category) => propProds(category))}
        </ul>
      </div>
    )
  }
};

export default Home;