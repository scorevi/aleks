import { defineConfig } from 'vite';
import react from '@vitejs/plugin-react';

// https://vitejs.dev/config/
export default defineConfig({
  plugins: [react()],
  optimizeDeps: {
    exclude: ['lucide-react'],
  },
  server: {
    host: '0.0.0.0', // This makes Vite listen on all network interfaces
    port: 3000,      // Default port from env file
    // You might need to add this if you're getting CORS errors from the frontend to backend
    // proxy: {
    //   '/api': {
    //     target: 'http://localhost:8000', // Your FastAPI backend
    //     changeOrigin: true,
    //     rewrite: (path) => path.replace(/^\/api/, ''),
    //   },
    // },
  },
});