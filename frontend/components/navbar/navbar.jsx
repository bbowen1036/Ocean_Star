import React from 'react';
import GreetingContainer from '../greeting/greeting_container';
import { faShoppingCart, faSearch, faUser } from '@fortawesome/free-solid-svg-icons'
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'


class Navbar extends React.Component  {
  constructor(props) {
    super(props);
    this.state = {
      query: ""
    }
  }




  currUser(){
    if (this.props.currentUser) {
      return (
        <div>
          the current user is {this.props.currentUser.first_name}
        </div>
      )
    } else {
      return (
        <div>
          there is NO current user
        </div>
      )
    }
  }

  render() { 
    return (
      <section className="nav-header">
        <div>
          <FontAwesomeIcon icon={faSearch} className="search-icon" size='lg'/>
          <input type="search" placeholder="search..." className="search"/>
        </div>

        <div className="nav-group">
          <ul className="nav-categories">
            <li className="left">icon</li>
            <li className="left">Seafood</li>
            <li className="left">Meat</li>
            <li className="left">Produce</li>
            <li className="left">Meal Kit</li>
            <li className="left">Bakery</li>
            <li className="left">Pantry</li>
          </ul>
        </div>
        <div className="nav-bttn">
          <FontAwesomeIcon icon={faShoppingCart} size='2x' className="nav-icon cart-icon"/>
          < GreetingContainer className="nav-icon"/>  
        </div>
        
      </section>
    )
    }
};

export default Navbar;