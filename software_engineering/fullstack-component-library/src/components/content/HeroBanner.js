// src/components/content/HeroBanner.js
import React from 'react';
import styled from 'styled-components';
import Button from '../ui/Button';

const BannerWrapper = styled.div`
  background-image: url('${props => props.backgroundImage}');
  background-size: cover;
  background-position: center;
  height: 500px;
  display: flex;
  align-items: center;
  justify-content: center;
  text-align: center;
  color: white;
`;

const Content = styled.div`
  background-color: rgba(0, 0, 0, 0.5);
  padding: 2rem;
  border-radius: 8px;
`;

const Title = styled.h1`
  font-size: 2.5rem;
  margin-bottom: 1rem;
`;

const Subtitle = styled.p`
  font-size: 1.2rem;
  margin-bottom: 2rem;
`;

const HeroBanner = ({ backgroundImage, title, subtitle, ctaText, ctaLink }) => {
  return (
    <BannerWrapper backgroundImage={backgroundImage}>
      <Content>
        <Title>{title}</Title>
        <Subtitle>{subtitle}</Subtitle>
        <Button as="a" href={ctaLink}>{ctaText}</Button>
      </Content>
    </BannerWrapper>
  );
};

export default HeroBanner;