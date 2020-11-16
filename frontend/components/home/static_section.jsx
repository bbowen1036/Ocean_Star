import React from 'react';

const StaticHeader = () => {
  return(
    <section className="static-header">
      <div className='container1'>
        <div className="static-text">
          <h4>Pristine Seafood</h4>
          <p>We foster relationships with local fishermen to deliver the freshest product possible.</p>
        </div>
        <div className='static-img'>
          <img src="https://oceanstar-seed.s3-us-west-1.amazonaws.com/splash-catch.png" alt="catch"/>
        </div>
        <div className="static-text">
          <h4>With an eye for sustainability</h4>
          <p>Our local fishermen and farmers are prized for their sustainable practices.</p>
        </div>
        <div className='static-img'>
          <img src="https://oceanstar-seed.s3-us-west-1.amazonaws.com/splash-makerel.png" alt="makerl"/>
        </div>
      </div>
      <div className="container1">
        <div className='static-img'>
          <img src="https://oceanstar-seed.s3-us-west-1.amazonaws.com/splash-plating.png" alt="plate"/>
        </div>
        <div className="static-text">
          <h4>EACH INGREDIENT IS CHOSEN BY OUR CHEFS</h4>
          <p>We source and buy the ingredients we love to cook with and make them available to everyone!</p>
        </div>
        <div className='static-img'>
          <img src="https://oceanstar-seed.s3-us-west-1.amazonaws.com/splash-cantu.png" alt="cantu"/>
        </div>
        <div className="static-text">
          <h4>Delivered to your door</h4>
          <p>Same-day & next-day contactless delivery is available in the SF Bay Area with our refrigerated trucks. National flat-rate shipping.</p>
          <button>delivery & shipping</button>
          <p className="location">Or pickup at 1315 Egbert Ave. between 9am-12pm.</p>
        </div>
      </div>

    </section>
  )
};

export default StaticHeader
