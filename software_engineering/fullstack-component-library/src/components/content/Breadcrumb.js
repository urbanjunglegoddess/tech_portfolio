// src/components/content/Breadcrumb.js
import React from 'react';
import { Link } from 'react-router-dom';
import styled from 'styled-components';

const BreadcrumbWrapper = styled.nav`
  margin-bottom: 1rem;
`;

const BreadcrumbList = styled.ol`
  list-style-type: none;
  padding: 0;
  display: flex;
  flex-wrap: wrap;
`;

const BreadcrumbItem = styled.li`
  &:not(:last-child)::after {
    content: '/';
    margin: 0 0.5rem;
    color: #666;
  }
`;

const BreadcrumbLink = styled(Link)`
  color: #007bff;
  text-decoration: none;

  &:hover {
    text-decoration: underline;
  }
`;

const Breadcrumb = ({ items }) => {
  return (
    <BreadcrumbWrapper aria-label="Breadcrumb">
      <BreadcrumbList>
        {items.map((item, index) => (
          <BreadcrumbItem key={index}>
            {index === items.length - 1 ? (
              <span>{item.label}</span>
            ) : (
              <BreadcrumbLink to={item.path}>{item.label}</BreadcrumbLink>
            )}
          </BreadcrumbItem>
        ))}
      </BreadcrumbList>
    </BreadcrumbWrapper>
  );
};

export default Breadcrumb;
