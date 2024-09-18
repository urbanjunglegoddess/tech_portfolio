// src/components/media/Carousel.js
import React, { useState } from 'react';
import styled from 'styled-components';

const CarouselWrapper = styled.div`
  position: relative;
  width: 100%;
  max-width: 600px;
  margin: 0 auto;
`;

const CarouselSlide = styled.div`
  display: ${props => (props.active ? 'block' : 'none')};
`;

const CarouselImage = styled.img`
  width: 100%;
  height: auto;
`;

const CarouselButton = styled.button`
  position: absolute;
  top: 50%;
  transform: translateY(-50%);
  background-color: rgba(0, 0, 0, 0.5);
  color: white;
  border: none;
  padding: 1rem;
  cursor: pointer;

  &:hover {
    background-color: rgba(0, 0, 0, 0.7);
  }
`;

const PrevButton = styled(CarouselButton)`
  left: 1rem;
`;

const NextButton = styled(CarouselButton)`
  right: 1rem;
`;

const Carousel = ({ images }) => {
  const [currentIndex, setCurrentIndex] = useState(0);

  const nextSlide = () => {
    setCurrentIndex((prevIndex) => (prevIndex + 1) % images.length);
  };

  const prevSlide = () => {
    setCurrentIndex((prevIndex) => (prevIndex - 1 + images.length) % images.length);
  };

  return (
    <CarouselWrapper>
      {images.map((image, index) => (
        <CarouselSlide key={index} active={index === currentIndex}>
          <CarouselImage src={image.src} alt={image.alt} />
        </CarouselSlide>
      ))}
      <PrevButton onClick={prevSlide}>❮</PrevButton>
      <NextButton onClick={nextSlide}>❯</NextButton>
    </CarouselWrapper>
  );
};

export default Carousel;