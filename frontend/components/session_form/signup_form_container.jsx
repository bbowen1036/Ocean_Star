import { connect } from 'react-redux';
import React from 'react';
import { Link } from 'react-router-dom';

import { signup, receiveSessionErrors } from '../../actions/session_actions';
import SessionForm from './session_form';

const mSTP = ({ errors }) => {
  return {
    errors: errors.session,
    formType: 'signup',
    navLink: <Link to="/login">Login Instead</Link>
  };
};

const mDTP = dispatch => {
  return {
    processForm: (newUser) => dispatch(signup(newUser)), 
    clearErrors: () => dispatch(receiveSessionErrors([]))
  };
};

export default connect(mSTP, mDTP)(SessionForm);