import React from 'react';

const Footer = () => {
  return (
    <footer className="footer">
      <div className="footer-title">
        <h2>OCEAN STAR</h2>
        <h5>seafood & provisions</h5>
        <ul className="social-media">
          <li><a href="">A</a></li>
          <li><a href="">G</a></li>
          <li><a href="">L</a></li>
        </ul>
      </div>
      <div className="credits">
        This is a proud clone of <a href="https://www.fourstarseafood.com/">Four Star Seafood</a>
      </div>
      <div className="footer-end">
        &#169; Ocean star seafood and provisions
      </div>
    </footer>
  )
};

export default Footer;