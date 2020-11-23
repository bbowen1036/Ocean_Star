import React from 'react';
import {
  Route,
  Redirect,
  Switch,
  Link,
  HashRouter
} from 'react-router-dom';

import LoginFormContainer from './session_form/login_form_container';
import SessionFormContainer from './session_form/signup_form_container';
import HomeContainer from './home/home_container';
import NavbarContainer from './navbar/navbar_container';
import Error from './error/error';
import Footer from './footer/footer';
import ProductShow from './products/product_show';
import { AuthRoute, ProtectedRoute } from '../util/route_util';
import CartContainer from './cart/cart_container';
import SearchContainer from './search/search_container';
import SeafoodContainer from './category_show/seafood_container';
import MeatContainer from './category_show/meat';
import ProduceContainer from './category_show/produce';
import MealKitContainer from './category_show/meal_kit';
import BakeryContainer from './category_show/bakery';
import PantryContainer from './category_show/pantry';
import ModalContainer from './modal/modal_container'

const App = () => {
  return (
    <div>
      <header>
        <NavbarContainer />
      </header>
      <Switch>
        <Route path='/error' component={Error} />
        <Route exact path='/' component={HomeContainer} />
        <AuthRoute exact path="/login" component={LoginFormContainer} />
        <AuthRoute exact path="/signup" component={SessionFormContainer} />
        <Route exact path='/search' component={SearchContainer}/>
        <Route exact path='/cart' component={CartContainer} />
        <Route exact path='/seafood' component={SeafoodContainer} />
        <Route exact path='/meat' component={MeatContainer} />
        <Route exact path='/produce' component={ProduceContainer} />
        <Route exact path='/mealKit' component={MealKitContainer} />
        <Route exact path='/bakery' component={BakeryContainer} />
        <Route exact path='/pantry' component={PantryContainer} />

        <Route exact path='/fish' component={ProductShow} />
        <Redirect to="/error" />
      </Switch>

      <ModalContainer/>
      
      <footer>
        <Footer />
      </footer>
    </div>
  )
};

export default App;