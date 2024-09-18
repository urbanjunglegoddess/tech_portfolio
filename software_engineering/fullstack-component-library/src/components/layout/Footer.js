// src/components/layout/Footer.js
import React from 'react';
import styled from 'styled-components';
import { Link } from 'react-router-dom';

const FooterWrapper = styled.footer`
  background-color: #f8f8f8;
  padding: 2rem 0;
  margin-top: 2rem;
`;

const FooterContent = styled.div`
  display: flex;
  justify-content: space-between;
  max-width: 1200px;
  margin: 0 auto;
  padding: 0 1rem;
`;

const FooterSection = styled.div`
  flex: 1;
  margin: 0 1rem;
`;

const FooterTitle = styled.h3`
  margin-bottom: 1rem;
`;

const FooterList = styled.ul`
  list-style-type: none;
  padding: 0;
`;

const FooterListItem = styled.li`
  margin-bottom: 0.5rem;
`;

const SocialIcons = styled.div`
  display: flex;
  gap: 1rem;
`;

const SocialIcon = styled.a`
  color: #333;
  font-size: 1.5rem;
  &:hover {
    color: #007bff;
  }
`;

const Footer = () => {
  return (
    <FooterWrapper>
      <FooterContent>
        <FooterSection>
          <FooterTitle>Site Map</FooterTitle>
          <FooterList>
            <FooterListItem><Link to="/">Home</Link></FooterListItem>
            <FooterListItem><Link to="/about">About</Link></FooterListItem>
            <FooterListItem><Link to="/contact">Contact</Link></FooterListItem>
          </FooterList>
        </FooterSection>
        <FooterSection>
          <FooterTitle>Contact Information</FooterTitle>
          <FooterList>
            <FooterListItem>Email: info@example.com</FooterListItem>
            <FooterListItem>Phone: (123) 456-7890</FooterListItem>
            <FooterListItem>Address: 123 Main St, City, Country</FooterListItem>
          </FooterList>
        </FooterSection>
        <FooterSection>
          <FooterTitle>Follow Us</FooterTitle>
          <SocialIcons>
            <SocialIcon href="#" aria-label="Facebook">📘</SocialIcon>
            <SocialIcon href="#" aria-label="Twitter">🐦</SocialIcon>
            <SocialIcon href="#" aria-label="Instagram">📷</SocialIcon>
            <SocialIcon href="#" aria-label="LinkedIn">💼</SocialIcon>
          </SocialIcons>
        </FooterSection>
      </FooterContent>
    </FooterWrapper>
  );
};

export default Footer;