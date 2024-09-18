// src/components/content/TextLayout.js
import React from 'react';
import styled from 'styled-components';

const Heading = styled.h1`
  font-size: 2.5rem;
  margin-bottom: 1rem;
`;

const Subheading = styled.h2`
  font-size: 2rem;
  margin-bottom: 0.75rem;
`;

const Paragraph = styled.p`
  font-size: 1rem;
  line-height: 1.5;
  margin-bottom: 1rem;
`;

const UnorderedList = styled.ul`
  list-style-type: disc;
  margin-left: 2rem;
  margin-bottom: 1rem;
`;

const OrderedList = styled.ol`
  list-style-type: decimal;
  margin-left: 2rem;
  margin-bottom: 1rem;
`;

const ListItem = styled.li`
  margin-bottom: 0.5rem;
`;

const DefinitionList = styled.dl`
  margin-bottom: 1rem;
`;

const DefinitionTerm = styled.dt`
  font-weight: bold;
`;

const DefinitionDescription = styled.dd`
  margin-left: 1rem;
  margin-bottom: 0.5rem;
`;

const TextLayout = ({ content }) => {
  const renderContent = (item) => {
    switch (item.type) {
      case 'heading':
        return <Heading>{item.text}</Heading>;
      case 'subheading':
        return <Subheading>{item.text}</Subheading>;
      case 'paragraph':
        return <Paragraph>{item.text}</Paragraph>;
      case 'unordered-list':
        return (
          <UnorderedList>
            {item.items.map((listItem, index) => (
              <ListItem key={index}>{listItem}</ListItem>
            ))}
          </UnorderedList>
        );
      case 'ordered-list':
        return (
          <OrderedList>
            {item.items.map((listItem, index) => (
              <ListItem key={index}>{listItem}</ListItem>
            ))}
          </OrderedList>
        );
      case 'definition-list':
        return (
          <DefinitionList>
            {item.items.map((defItem, index) => (
              <React.Fragment key={index}>
                <DefinitionTerm>{defItem.term}</DefinitionTerm>
                <DefinitionDescription>{defItem.description}</DefinitionDescription>
              </React.Fragment>
            ))}
          </DefinitionList>
        );
      default:
        return null;
    }
  };

  return <div>{content.map((item, index) => renderContent(item))}</div>;
};

export default TextLayout;