import React from 'react';
import { Link } from 'react-router-dom'
import GreetingContainer from '../greeting/greeting_container';
import { faShoppingCart, faSearch, faUser } from '@fortawesome/free-solid-svg-icons';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
// import {HashLink} from 'react-router-hash-link'
import { Redirect } from 'react-router-dom'


class Navbar extends React.Component  {
  constructor(props) {
    super(props);
    this.state = {
      query: ""
    }
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleSubmit(e) {
    e.preventDefault();
    const search = Object.assign({}, this.state);  
    // this.props.findProduct(search.query)
    // .then(() => this.props.history.push("/search"));
  } 


  update() {
    return e => this.setState({query: e.currentTarget.value}, () => {

      if(this.state.query.length === 0) {
        this.props.findProduct(null)
      } else {
        this.props.findProduct(this.state.query)
      }
    });
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
        
          <form onSubmit={this.handleSubmit}>
          <input type="search" placeholder="search..." className="search" onChange={this.update()}/>
        <Link to="/search" >
            <FontAwesomeIcon icon={faSearch} className="search-icon" size='lg'/>
        </Link>
          </form>
       

        <div className="nav-group">
          <ul className="nav-categories">
            <Link to="/">  
              <li className="left">
                <img className="nav-logo" src="https://oceanstar-seed.s3-us-west-1.amazonaws.com/logo.jpeg" alt=""/>
              </li>
            </Link>
            
      

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