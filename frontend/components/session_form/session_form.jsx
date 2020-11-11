import React from 'react';

class SessionForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      first_name: "",
      last_name: '',
      email: '',
      password: ''
    };
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  componentDidMount() {
    this.props.clearErrors()
  }

  update(field) {
    return e => this.setState({
      [field]: e.currentTarget.value
    });
  }

  handleSubmit(e) {
    e.preventDefault();

    const user = Object.assign({}, this.state);
    this.props.processForm(user);
  }

  renderErrors() {
    return(
      <ul>
        {this.props.errors.map((error, i) => (
          <li key={`error-${i}`}>
            {error}
          </li>
        ))}
      </ul>
    );
  }

  loginForm() {
    return (
      <div className="login-page-container">
        <div className="form-container">
          <form onSubmit={this.handleSubmit}>

            <header className="form-header">
              <h1 className="form-header-title">LOGIN</h1>
              <p className="login-form-instructions">Please enter your e-mail and password:</p>
            </header>

            {this.renderErrors()}
            <div className="login-form-item">
              <input 
                className="login-form-input"
                type="email" 
                placeholder="Email" 
                onChange={this.update('email')} 
              />
            </div>

            <div className="login-form-item">
              <input 
                className="login-form-input"
                type="password" 
                placeholder="Password" 
                onChange={this.update('password')} 
              />
            </div>

            <button className="login-button">Login</button>
            <div className="form-hint">
              {this.props.navLink}
            </div>
          </form>
        </div>
      </div>
    )
  };

  registerForm() {
    return (
      <div className="form-container">
        <form onSubmit={this.handleSubmit}>

          <header className="form-header">
            <h1 className="form-header-title">REGISTER</h1>
            <p className="login-form-instructions">Please fill in the information below:</p>
          </header>
        
          {this.renderErrors()}

          <div className="login-form-item">
              <input 
                className="login-form-input"
                type="text" 
                value={this.state.first_name} 
                onChange={this.update('first_name')} 
                placeholder="First name"
              />
          </div>

          <div className="login-form-item">
              <input 
                className="login-form-input"
                type="text" 
                value={this.state.last_name} 
                onChange={this.update('last_name')} 
                placeholder="Last name"
              />
          </div>

          <div className="login-form-item">
            <input 
              className="login-form-input"
              type="email" 
              value={this.state.email} 
              onChange={this.update('email')} 
              placeholder="Email"
            />
          </div>

          <div className="login-form-item">
              <input 
                className="login-form-input"
                type="password" 
                value={this.state.password} 
                onChange={this.update('password')} 
                placeholder="Password"
              />
          </div>
          
          <button className="login-button">CREATE MY ACCOUNT</button>
        </form>

      </div>
    )
  };
 
  render() {
    return (this.props.formType === 'login') ? this.loginForm() : this.registerForm()
  }
}

export default SessionForm;
