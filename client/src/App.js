import React, { Component } from 'react';
import './App.css';
import { Route, Switch  } from 'react-router-dom';

import Home from './components/Home.jsx';
import MainView from './components/MainView.jsx';
import Sidebar from './components/partials/Sidebar.jsx';
import Nav from './components/partials/Nav.jsx';
import Nav2 from './components/partials/Nav2.jsx';
import MapArea from './components/partials/MapArea.jsx';
import LocationsList from './components/partials/LocationsList.jsx';
import Login from './components/Login.jsx';
import Register from './components/Register.jsx';


class App extends Component {
constructor(props){
super(props);
  this.handleSubmit= this.handleSubmit.bind(this);
}

createUser(user) {
  fetch('/user', {
    method: 'POST',
    body: JSON.stringify(user),
    headers: {
        'content-type': 'application/json'
      }
  })
}

  handleSubmit(user) {
    this.createUser(user);
  }

// findUser(user) {
//   fetch('/user', {
//     method: 'POST',
//     body: JSON.stringify(user),
//     headers: {
//         'content-type': 'application/json'
//       }
//   })
// }

  handleSubmit(user) {
    this.createUser(user);
  }

  render() {
    return (
      <div className="App">
        <Nav />
        <MainView />
        <Route
          render={() => (<Register onSubmit={this.handleSubmit} />)}
          exact path="/register"
          />

        <Route exact path="/register" component={Register} />
        <Route exact path="/login" component={Login} />
        <Route exact path='/map' component={MapArea} />

    </div>
    );
  }
}

export default App;
