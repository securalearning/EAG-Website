# Second-Site

## Description
The EA Global website is a modern, responsive web application built with Next.js and Tailwind CSS. It offers a comprehensive platform featuring destinations, test preparation resources, counselling services, testimonials, career opportunities, visa assistance, and more. The site is designed to provide users with an engaging and informative experience.

## Features
- Explore various destinations with detailed pages
- Test preparation modules for multiple exams (IELTS, TOEFL, CELPIP, OET, PTE, DET)
- Josaa counselling services and resources
- Career and visa assistance information
- Contact forms and office location details
- Testimonials and success stories
- Responsive design with dark/light theme support
- SEO optimized with next-seo and sitemap generation

## Technologies Used
- Next.js 13.5.1
- React 18
- TypeScript
- Tailwind CSS
- Radix UI components
- Framer Motion for animations
- React Hook Form for form handling
- Next SEO for SEO management
- Various utility libraries (date-fns, clsx, zod, etc.)

## Installation and Running Instructions

### Prerequisites
- Node.js (v16 or higher recommended)
- npm (comes with Node.js)

### Setup
1. Clone the repository:
   ```bash
   git clone <repository-url>
   cd EAG-Website
   ```
2. Install dependencies:
   ```bash
   npm install
   ```
3. Run the development server:
   ```bash
   npm run dev
   ```
4. Open your browser and navigate to:
   ```
   http://localhost:3000
   ```

### Build and Production
To build the project for production:
```bash
npm run build
```
To start the production server:
```bash
npm start
```

### Linting
To run ESLint checks:
```bash
npm run lint
```

## Folder Structure Overview
- `app/` - Contains Next.js app routes and pages, organized by feature
- `components/` - Reusable React components, organized by feature and UI elements
- `hooks/` - Custom React hooks
- `lib/` - Utility functions and data
- `public/` - Static assets like images and sitemap files
- `styles/` (if present) - Global and component-specific styles
- `README.md` - Project documentation
- `package.json` - Project metadata and dependencies

