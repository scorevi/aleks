import { StrictMode } from 'react';
import { createRoot } from 'react-dom/client';
import App from './App.tsx'; // This is your Chatbot App component
import './index.css'; // Your main CSS for the React app

// Try to mount to different possible root elements
let rootElement = document.getElementById('ai-chatbot-root');

// If ai-chatbot-root doesn't exist, try to find or create a root element
if (!rootElement) {
  rootElement = document.getElementById('root');
}

if (!rootElement) {
  // Create a root element if none exists
  rootElement = document.createElement('div');
  rootElement.id = 'root';
  document.body.appendChild(rootElement);
}

if (rootElement) {
  createRoot(rootElement).render(
    <StrictMode>
      <App />
    </StrictMode>
  );
} else {
  console.error("Could not find or create a root element to mount React app.");
}