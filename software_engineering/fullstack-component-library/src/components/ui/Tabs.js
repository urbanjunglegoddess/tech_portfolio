// src/components/ui/Tabs.js
import React, { useState } from 'react';
import styled from 'styled-components';

const TabsWrapper = styled.div`
  width: 100%;
`;

const TabList = styled.ul`
  display: flex;
  list-style-type: none;
  padding: 0;
  margin: 0;
  border-bottom: 1px solid #ccc;
`;

const TabItem = styled.li`
  padding: 0.5rem 1rem;
  cursor: pointer;
  background-color: ${props => props.active ? '#f0f0f0' : 'transparent'};
  border: 1px solid #ccc;
  border-bottom: none;
  margin-right: 0.5rem;
  border-top-left-radius: 4px;
  border-top-right-radius: 4px;

  &:hover {
    background-color: #f0f0f0;
  }
`;

const TabContent = styled.div`
  padding: 1rem;
  border: 1px solid #ccc;
  border-top: none;
`;

const Tabs = ({ tabs }) => {
  const [activeTab, setActiveTab] = useState(0);

  return (
    <TabsWrapper>
      <TabList>
        {tabs.map((tab, index) => (
          <TabItem
            key={index}
            active={index === activeTab}
            onClick={() => setActiveTab(index)}
          >
            {tab.label}
          </TabItem>
        ))}
      </TabList>
      <TabContent>
        {tabs[activeTab].content}
      </TabContent>
    </TabsWrapper>
  );
};

export default Tabs;