import React from 'react';
import { faShoppingCart, faTimes } from '@fortawesome/free-solid-svg-icons';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';

class Cart extends React.Component {

  constructor(props) {
    super(props);
    this.state = {
      items: [],
      update: false,
      toggle: false,
      total: 0
    } 
    
    this.cartBody = this.cartBody.bind(this);
    this.listCartItems = this.listCartItems.bind(this);
    this.lineItem = this.lineItem.bind(this);
    this.deleteItem = this.deleteItem.bind(this);
    this.mapItemCount = this.mapItemCount.bind(this);
    this.toggle = this.toggle.bind(this);
  }

  // componentDidMount() {
  //   if (this.props.currentUser) {
  //     let cartId = this.props.currentUser.cartId.id
  //     let cart = this.props.currentUser.cart[cartId]
  //     // this.setState({ items: Object.entries(cart) })
  //   } 
  // }

  // componentDidUpdate(prevProp, prevState) {
    
  //   if (prevState.update != this.state.update) {
      
  //     let cartId = this.props.currentUser.cartId.id
  //     let cart = this.props.currentUser.cart[cartId]
  //     this.setState({ items: Object.entries(cart) })
  //     this.cartBody()
     
 
  //   }
  // }

  // componentDidUpdate() {
  //   if (this.props.currentUser) {
  //     let cartId = this.props.currentUser.cartId.id
  //     let cart = this.props.currentUser.cart[cartId]
  //     this.setState({ items: Object.entries(cart) })
  //   } 
  // }

  toggle () {
    this.setState({toggle: !this.state.toggle})
  }
 
  deleteItem(item) {
    
    let id = item[1][1].pop();
    this.props.removeItem(id)
  
    this.setState({ update: !this.state.update })
    this.lineItem()
  }

  lineItem(item, idx) {     // {prod_id: [count, [cart_ids]]}
    const product = this.props.products[item[0]]
    return (
      <div className="cart-line-item" key={idx}>
       
        
        <img src={product.photo_url} />
        <div className='cart-item'>
          <h3>{product.name}</h3>
          <div className='cart-btn-group'>
            <button onClick={() => this.deleteItem(item)}>-</button>

              <input type="number" min='1' max='20' placeholder={item[1][0]} />    
            <button>+</button>        
          </div>
        </div>
        
        <div className='cart-item-total'>${parseFloat(product.price * item[1][0]).toFixed(2)}</div>
      
      </div>
    )
  }


  listCartItems(count) {
    const items = Object.entries(count)
    return items.map((item, idx) => this.lineItem(item, idx))
  }

  mapItemCount() {
    // {prod_id: [count, [cart_ids]]}
    let count = {}

    let values = this.state.items
    values.forEach( arr => {
      if (count[arr[1]] === undefined) {
        count[arr[1]] = [1, [arr[0]]]
      } else {
        count[arr[1]][0] += 1
        count[arr[1]][1].push(arr[0])
      }
    })
    // debugger
    return this.listCartItems(count)
  }

  cartBody() {
    if (this.props.currentUser === undefined) {
      
      return <div className='cart-login-message'>Please LOGIN to shop!</div>
    } else {
      if (this.state.items.length === 0) {
        return <h4 className='cart-empty'>The cart is empty</h4>
      } else {
        return (
          <div>

            {this.mapItemCount()}

            <div className="modal-footer">
            <div className="sidecart-memo">
              <h5>Write a note here</h5>
              <textarea height="57px" className="special-instructions" placeholder="Special Instructions"></textarea>
            </div>
            <div className="sidecart-checkout">
              <div className="sidecart-checkout-price">
                <span>Subtotal</span>
                <span>${this.state.total}</span>
              </div>
              <div><button className="sidecart-checkout-button">View Cart</button></div>
              <div 
                className="sidecart-continue-shopping"

                onClick={this.toggle}  //needs to be passed DOWN
                >
                  Continue Shopping
              </div>
            </div>
          </div>
        </div>        
        )       
      }
    }
  }

  render() {
    const display = {
      display: 'block', 
      height: '100vh',
      position: 'fixed',
    };

    const hide = {
      display: 'none'
    };

    return (
      <div>

        <a className="btn" onClick={this.toggle}>
          {this.state.toggle ? 
            <FontAwesomeIcon icon={faShoppingCart} size='2x' className="nav-icon cart-icon"/> : 
            <FontAwesomeIcon icon={faShoppingCart} size='2x' className="nav-icon cart-icon"/>
          }
        </a>
      <section className="modal" style={this.state.toggle ? display : hide}>

        {this.cartBody()}
        

    
      </section>
      </div>
    )
  }

}


export default Cart;
