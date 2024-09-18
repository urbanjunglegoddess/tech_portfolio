// src/App.js
import React from 'react';
import { BrowserRouter as Router, Route, Switch } from 'react-router-dom';
import styled from 'styled-components';
import Header from './components/layout/Header';
import Home from './pages/Home';
import About from './pages/About';
import Contact from './pages/Contact';

const AppWrapper = styled.div`
  min-height: 100vh;
  display: flex;
  flex-direction: column;
`;

const Main = styled.main`
  flex-grow: 1;
  padding: 2rem;
`;

const App = () => {
  return (
    <Router>
      <AppWrapper>
        <Header />
        <Main>
          <Switch>
            <Route exact path="/" component={Home} />
            <Route path="/about" component={About} />
            <Route path="/contact" component={Contact} />
          </Switch>
        </Main>
      </AppWrapper>
    </Router>
  );
};

export default App;