// src/components/ui/Accordion.js
import React, { useState } from 'react';
import styled from 'styled-components';

const AccordionWrapper = styled.div`
  border: 1px solid #ddd;
  border-radius: 4px;
  margin-bottom: 1rem;
`;

const AccordionHeader = styled.button`
  width: 100%;
  text-align: left;
  padding: 1rem;
  background-color: #f5f5f5;
  border: none;
  cursor: pointer;
  display: flex;
  justify-content: space-between;
  align-items: center;

  &:hover {
    background-color: #e5e5e5;
  }
`;

const AccordionContent = styled.div`
  padding: 1rem;
  display: ${props => props.isOpen ? 'block' : 'none'};
`;

const Chevron = styled.span`
  transition: transform 0.3s ease;
  transform: ${props => props.isOpen ? 'rotate(180deg)' : 'rotate(0)'};
`;

const AccordionItem = ({ title, children }) => {
  const [isOpen, setIsOpen] = useState(false);

  return (
    <AccordionWrapper>
      <AccordionHeader onClick={() => setIsOpen(!isOpen)}>
        {title}
        <Chevron isOpen={isOpen}>▼</Chevron>
      </AccordionHeader>
      <AccordionContent isOpen={isOpen}>
        {children}
      </AccordionContent>
    </AccordionWrapper>
  );
};

const Accordion = ({ items }) => {
  return (
    <div>
      {items.map((item, index) => (
        <AccordionItem key={index} title={item.title}>
          {item.content}
        </AccordionItem>
      ))}
    </div>
  );
};

export default Accordion;