// import logo from './logo.svg';
import React from 'react';
import './App.css';
import {
  BrowserRouter as Router,
  Switch,
  Route,
} from "react-router-dom";

// components
import { Restaurants } from './containers/Restaurants';
import { Foods } from './containers/Foods';
import { Orders } from './containers/Orders';

function App() {
  return (
    <Router>
      <Switch>
        // 店舗一覧ページ
        <Route
         exact
         path="/restaurants">
          <Restaurants/>
        </Route>

        // フード一覧ページ
        <Route
         exact
         path="/foods">
          <Foods/>
        </Route>

        // 注文ページ
        <Route
         exact
         path="/orders">
          <Orders/>
        </Route>

        <Route
          exact
          path="/restaurants/:restaurantsId/foods"
          render={({ match }) =>
            <Foods
              match={match}
            />
        }
        />
      </Switch>
    </Router>
    // <div className="App">
    //   <header className="App-header">
    //     <img src={logo} className="App-logo" alt="logo" />
    //     <p>
    //       テキストを変更してみる
    //     </p>
    //     <a
    //       className="App-link"
    //       href="https://reactjs.org"
    //       target="_blank"
    //       rel="noopener noreferrer"
    //     >
    //       Learn React
    //     </a>
    //   </header>
    // </div>
  );
}

export default App;
