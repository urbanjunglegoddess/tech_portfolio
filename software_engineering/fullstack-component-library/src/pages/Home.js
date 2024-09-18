// src/pages/Home.js
import React, { useState } from 'react';
import styled from 'styled-components';
import HeroBanner from '../components/content/HeroBanner';
import Card from '../components/ui/Card';
import Accordion from '../components/ui/Accordion';
import Modal from '../components/ui/Modal';
import Button from '../components/ui/Button';

const Section = styled.section`
  margin: 2rem 0;
`;

const CardGrid = styled.div`
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
  gap: 1rem;
`;

const Home = () => {
  const [isModalOpen, setIsModalOpen] = useState(false);

  const accordionItems = [
    { title: 'Section 1', content: 'Content for section 1' },
    { title: 'Section 2', content: 'Content for section 2' },
    { title: 'Section 3', content: 'Content for section 3' },
  ];

  return (
    <div>
      <HeroBanner
        backgroundImage="/path/to/your/image.jpg"
        title="Welcome to Our Component Library"
        subtitle="Explore our collection of reusable React components"
        ctaText="Get Started"
        ctaLink="/about"
      />

      <Section>
        <h2>Featured Components</h2>
        <CardGrid>
          <Card
            image="/path/to/card-image-1.jpg"
            title="Card Component"
            description="A versatile card component for displaying content"
          >
            <Button onClick={() => setIsModalOpen(true)}>Learn More</Button>
          </Card>
          <Card
            image="/path/to/card-image-2.jpg"
            title="Accordion Component"
            description="Collapsible content sections for organized information"
          />
          <Card
            image="/path/to/card-image-3.jpg"
            title="Modal Component"
            description="Overlay for focused content and interactions"
          />
        </CardGrid>
      </Section>

      <Section>
        <h2>Accordion Example</h2>
        <Accordion items={accordionItems} />
      </Section>

      <Modal isOpen={isModalOpen} onClose={() => setIsModalOpen(false)}>
        <h2>Card Component Details</h2>
        <p>This is a detailed description of the Card component and its usage.</p>
      </Modal>
    </div>
  );
};

export default Home;