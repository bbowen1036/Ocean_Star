import React from 'react';

const Footer = () => {
  return (
    <footer className="footer">
      <div className="footer-title">
        <h2>OCEAN STAR</h2>
        <h5>seafood & provisions</h5>
        <ul className="social-media">
          <li><a href="https://angel.co/u/brian-bowen-4">
            <img src="https://oceanstar-seed.s3-us-west-1.amazonaws.com/icon-angel.png" alt="angellist"/>
          </a></li>
          <li><a href="https://www.linkedin.com/in/brian-bowen-36456a7/">
            <img src="https://oceanstar-seed.s3-us-west-1.amazonaws.com/linkedin-logo-transparent.png" alt="linkedin"/>
          </a></li>
          <li><a href="https://github.com/bbowen1036">
            <img src="https://oceanstar-seed.s3-us-west-1.amazonaws.com/git-image2.png" alt="git"/>
          </a></li>
        </ul>
      </div>
      <div className="credits">
        This is a proud clone of <a className="reppin" href="https://www.fourstarseafood.com/">Four Star Seafood</a>
      </div>
      <div className="footer-end">
        &#169; Ocean star seafood and provisions
      </div>
    </footer>
  )
};

export default Footer;