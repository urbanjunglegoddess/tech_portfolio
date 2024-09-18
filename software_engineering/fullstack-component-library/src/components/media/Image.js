// src/components/media/Image.js
import React from 'react';
import styled from 'styled-components';

const StyledImage = styled.img`
  max-width: 100%;
  height: auto;
`;

const Image = ({ src, alt, width, height }) => {
  return <StyledImage src={src} alt={alt} width={width} height={height} />;
};

export default Image;