import { render, screen } from '@testing-library/react';
import App from './App';

test('render heading with welcome message', () => {
  render(<App />);
  const linkElement = screen.getByText('Welcome')
  expect(linkElement).toBeInTheDocument();
});





