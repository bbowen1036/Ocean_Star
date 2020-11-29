// import React from 'react';
// import { faShoppingCart, faTimes } from '@fortawesome/free-solid-svg-icons';
// import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';

// class Cart extends React.Component {

//   constructor(props) {
//     super(props);
//     this.state = {
//       toggle: false,
//       // cartItems:  Object.values(this.props.currentUser.user.cart)[0] 
//     }
//     this.toggle = this.toggle.bind(this);
//     this.listCartItems = this.listCartItems.bind(this);
//     this.mapItemCount = this.mapItemCount.bind(this);
//     this.itemList = this.itemList.bind(this);
//     this.getKeyByValue = this.getKeyByValue.bind(this);
//   }


//   getKeyByValue(e, val) {
//     e.preventDefault();

//     let object = Object.values(this.props.currentUser.user.cart)[0];

//     let foundKey = Object.keys(object).find(key => object[key] === parseInt(val));
    
//     this.props.removeItem(foundKey)
//   }

//   toggle() {

//     this.setState({toggle: !this.state.toggle})
//     // this.setState(() => ({
//     //   toggle: !this.state.toggle
//     // }));
//   }

//   mapItemCount() {
//     let count = {};



//     let values = Object.values(Object.values(this.props.currentUser.user.cart)[0]) || Object.values(this.props.currentUser.cart)[0]

//     if (values !== undefined){
//       values.forEach(el => {
//         if (count[el] === undefined) {
//           count[el] = 1;
//         } else {
//           count[el] += 1;
//         }
//       })
//     }

//     return count;
//   }

//   itemList(item) {
//     const product = this.props.products[item[0]]
 
//     return (
//       <div className="cart-line-item">
//         <img src={product.photo_url} alt="fish"/>
//         <div className='cart-item'>
//           <h3>{item[0]}</h3>
//           <div className='cart-btn-group'>
//             <button onClick={(e) => this.getKeyByValue(e, item[0])}>-</button>

//             <input type="number" min='1' max='20' value={item[1]}/>    
//             <button>+</button>        
//           </div>
//         </div>
        
//         <div className='cart-item-total'>${parseFloat(product.price * item[1]).toFixed(2)}</div>
//       </div>
//     )
//   }

//   listCartItems() {
//     if (this.props.currentUser === undefined) {

//       return <div className='cart-login-message'>Please LOGIN to shop!</div>
//     } else  {

//       const count = Object.entries(this.mapItemCount())
      
      
//       if (count.length === 0 || count === undefined ) {
//        
//         return (
//           <h4 className='cart-empty'>The cart is empty</h4>
//         )
//       } else {
//         return  (
//           <div className="cart-body">
//             <div className='cart-items'>
//               {count.map(item => this.itemList(item))}
//             </div>
//           </div>
//         )
//       }
//     }
//   }

//   render() {
    
//     const display = {
//       display: 'block', 
//       height: '100vh',
//       position: 'fixed',
//     };

//     const hide = {
//       display: 'none'
//     };

//     const modal = [];
//     modal.push(
//     <div className="modal" style={this.state.toggle ? display : hide} key="modalId">
//       <div className="cart-header">
//         <a className="btn" onClick={this.toggle}>
//           <FontAwesomeIcon icon={faTimes} size='2x' className="icon-cart"/>
//         </a>
//         <h4>Cart</h4>
//         <FontAwesomeIcon icon={faShoppingCart} size='1x' className="icon-cart"/> 
//       </div>

//       {this.listCartItems()}

//       <div className="modal-footer">
//         <div className="sidecart-memo">
//           <h5>Write a note here</h5>
//           <textarea height="57px" className="special-instructions" placeholder="Special Instructions"></textarea>
//         </div>

//         <div className="sidecart-checkout">
//           <div className="sidecart-checkout-price">
//             <span>Subtotal</span>
//             <span>$Price</span>
//           </div>
//           <div><button className="sidecart-checkout-button">View Cart</button></div>
//           <div 
//             className="sidecart-continue-shopping"
//             onClick={this.toggle}
//             >
//               Continue Shopping
//           </div>
//         </div>
//       </div>


//     </div>
//     );
    
//     return (
//       <div >
//         <a className="btn" onClick={this.toggle}>
//           {this.state.toggle ? 
//             <FontAwesomeIcon icon={faShoppingCart} size='2x' className="nav-icon cart-icon"/> : 
//             <FontAwesomeIcon icon={faShoppingCart} size='2x' className="nav-icon cart-icon"/>
//           }
//         </a>
//         {modal}
//       </div>
//     );
//   }


// }


// export default Cart;