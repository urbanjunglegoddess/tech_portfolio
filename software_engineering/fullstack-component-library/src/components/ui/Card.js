// src/components/ui/Card.js
import React from 'react';
import styled from 'styled-components';

const CardWrapper = styled.div`
  background-color: #fff;
  border-radius: 8px;
  box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
  overflow: hidden;
  margin: 1rem;
  display: flex;
  flex-direction: column;
`;

const CardImage = styled.img`
  width: 100%;
  height: 200px;
  object-fit: cover;
`;

const CardContent = styled.div`
  padding: 1rem;
`;

const CardTitle = styled.h3`
  margin: 0 0 0.5rem 0;
  font-size: 1.2rem;
`;

const CardDescription = styled.p`
  margin: 0 0 1rem 0;
  color: #666;
`;

const Card = ({ image, title, description, children }) => {
  return (
    <CardWrapper>
      {image && <CardImage src={image} alt={title} />}
      <CardContent>
        <CardTitle>{title}</CardTitle>
        <CardDescription>{description}</CardDescription>
        {children}
      </CardContent>
    </CardWrapper>
  );
};

export default Card;