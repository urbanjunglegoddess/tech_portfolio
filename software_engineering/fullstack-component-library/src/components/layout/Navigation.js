// src/components/layout/Navigation.js
import React from 'react';
import { Link } from 'react-router-dom';
import styled from 'styled-components';

const Nav = styled.nav`
  ul {
    display: flex;
    list-style-type: none;
    padding: 0;
  }

  li {
    margin-right: 1rem;
  }

  a {
    text-decoration: none;
    color: #333;
    &:hover {
      text-decoration: underline;
    }
  }
`;

const Navigation = () => {
  return (
    <Nav>
      <ul>
        <li><Link to="/">Home</Link></li>
        <li><Link to="/about">About</Link></li>
        <li><Link to="/contact">Contact</Link></li>
      </ul>
    </Nav>
  );
};

export default Navigation;