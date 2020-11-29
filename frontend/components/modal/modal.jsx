import React from 'react';
import Popup from './popup'
import { faPaperPlane, faCommentAlt } from '@fortawesome/free-solid-svg-icons';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';


class Modal extends React.Component {
  constructor(props){
    super(props)
    this.state = {
      currUser: this.props.currentUser,
      showModal: false,
      message: ''
    }
  
    this.handleOpenModal = this.handleOpenModal.bind(this);
    this.handleCloseModal = this.handleCloseModal.bind(this);
    this.update = this.update.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }
  
  handleOpenModal () {
    this.setState({ showModal: !this.state.showModal });
  }
  
  handleCloseModal () {
    this.setState({ showModal: false });
  }

  update() {
    return e => this.setState({ message: e.currentTarget.value })
  }

  handleSubmit() {
    const msg = Object.assign({message: this.state.message}); 

    this.props.sendMessage(msg);
    this.setState({
      message: ""
    })
  }
  
  render () {
    return (
      <div >
        <a onClick={this.handleOpenModal} className="modal-button-background">
        <FontAwesomeIcon icon={faCommentAlt} size='2x' className="modalBtn"/>

        </a>
        {/* <button onClick={this.handleOpenModal} className="modalBtn">&#128075;</button> */}
        <Popup 
           isOpen={this.state.showModal}
           contentLabel="onRequestClose Example"
           onRequestClose={this.handleCloseModal}
           className="Modal"
           overlayClassName="Overlay"
        >


          
      <div className="modal-container">
        <div className="modal-face">
         
           <h4>Welcome to <span className="modal-oceanstar">Ocean Star Seafood.</span></h4>
           <br></br>
          <div className="headwrap">
            <p>
              <span>Please check out my GitHub and LinkedIn pages to learn more about me. Thank you for visiting!</span>
              <br></br>
              <a href="https://www.linkedin.com/in/brian-bowen-36456a7/" >
                <img className="modal-linkedIn" src="https://oceanstar-seed.s3-us-west-1.amazonaws.com/linkedin-logo-transparent.png" alt="sfd"/>
              </a>
              <a href="https://github.com/bbowen1036/OceanStar" >
                <img className="modal-github" src="https://oceanstar-seed.s3-us-west-1.amazonaws.com/gitlogo.jpg" alt="adf"/>
              </a>
            </p>
            <img className="headshot" src="https://oceanstar-seed.s3-us-west-1.amazonaws.com/Albatross9663.jpg" alt="dsf"/>
          </div>
        </div>
        <form onSubmit={this.handleSubmit}>
          <div className="modal-input">
            <div><textarea className="txt-area" 
              placeholder="Send me a message..." 
              value={this.state.message} 
              onChange={this.update()}></textarea>
            </div>

          </div>

          <button className="modal-submit" onSubmit={this.handleSubmit}>
            <FontAwesomeIcon icon={faPaperPlane} size='3x' className="modal-submit"/>
          </button>
        </form>

        {/* <button className="modal-collapse">&#10146;</button>   need to fix */}
      </div>
        </Popup>
      </div>
    );
  }
}



export default Modal;