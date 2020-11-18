import React from 'react';


class Cart extends React.Component {

  constructor(props) {
    super(props);
    this.toggle = this.toggle.bind(this);
    this.state = {
      toggle: false
    }
  }

  toggle(event) {
    this.setState((prevState) => ({
      toggle: !prevState.toggle
    }));
  }

  render() {
    const display = {
      display: 'block'   
    };
    const hide = {
      display: 'none'
    };

    const modal = [];
    modal.push(
      <div className="modal" style={this.state.toggle ? display : hide}>
      <div className="modal-content">
        <h4>Modal Header</h4>
      </div>
      <div className="modal-footer">
        <a className="btn-flat" onClick={this.toggle}>This is the Modal body</a>
      </div>
    </div>
    );
    
    return (
      <div>
        <a className="btn" onClick={this.toggle}>{this.state.toggle ? 'Close modal' : 'Open modal'}</a>
        {modal}
      </div>
    );
  }


}


export default Cart;