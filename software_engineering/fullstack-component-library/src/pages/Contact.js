// src/pages/Contact.js
import React from 'react';
import TextLayout from '../components/content/TextLayout';
import SubscribeForm from '../components/form/SubscribeForm';

const Contact = () => {
  const content = [
    { type: 'heading', text: 'Contact Us' },
    { type: 'paragraph', text: 'We'd love to hear from you! Here's how you can reach us:' },
    { type: 'definition-list', items: [
      { term: 'Email', description: 'info@example.com' },
      { term: 'Phone', description: '(123) 456-7890' },
      { term: 'Address', description: '123 Main St, Anytown, USA 12345' },
    ]},
    { type: 'subheading', text: 'Subscribe to Our Newsletter' },
    { type: 'paragraph', text: 'Stay up to date with our latest news and offers:' },
  ];

  const handleSubscribe = (email) => {
    console.log(`Subscribed with email: ${email}`);
    // Here you would typically send this to your backend
  };

  return (
    <div>
      <TextLayout content={content} />
      <SubscribeForm onSubmit={handleSubscribe} />
    </div>
  );
};

export default Contact;