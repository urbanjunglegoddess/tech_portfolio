// src/pages/About.js
import React from 'react';
import TextLayout from '../components/content/TextLayout';
import Image from '../components/media/Image';

const About = () => {
  const content = [
    { type: 'heading', text: 'About Us' },
    { type: 'paragraph', text: 'Welcome to our company! We are dedicated to providing high-quality solutions for our customers.' },
    { type: 'subheading', text: 'Our Mission' },
    { type: 'paragraph', text: 'Our mission is to innovate and inspire through technology, creating products that make a difference in people's lives.' },
    { type: 'subheading', text: 'Our Team' },
    { type: 'unordered-list', items: [
      'John Doe - CEO',
      'Jane Smith - CTO',
      'Mike Johnson - Lead Developer',
    ]},
  ];

  return (
    <div>
      <TextLayout content={content} />
      <Image src="/path/to/team-photo.jpg" alt="Our Team" width={600} height={400} />
    </div>
  );
};

export default About;