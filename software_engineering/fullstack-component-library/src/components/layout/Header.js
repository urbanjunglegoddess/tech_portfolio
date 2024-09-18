// src/components/layout/Header.js
import React from 'react';
import styled from 'styled-components';
import Navigation from './Navigation';
import SearchBar from '../form/SearchBar';

const HeaderWrapper = styled.header`
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 1rem 2rem;
  background-color: #f8f8f8;
`;

const Logo = styled.h1`
  font-size: 1.5rem;
  margin: 0;
`;

const Header = () => {
  return (
    <HeaderWrapper>
      <Logo>Component Library</Logo>
      <Navigation />
      <SearchBar />
    </HeaderWrapper>
  );
};

export default Header;