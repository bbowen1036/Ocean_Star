import React from 'react';

class PopUp extends React.Component {


  render() {
    
    return(
      <div>
        {
          this.props.isOpen ? this.props.children : null
        }
      </div>
    )
  }
};

export default PopUp;