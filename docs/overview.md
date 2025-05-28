# Project Overview

## Introduction
EA Global website is a feature-rich web application built with Next.js and Tailwind CSS. It serves as a platform for exploring destinations, preparing for various tests, accessing counselling services, viewing testimonials, and more.

## Project Structure

### app/
This directory contains the main application routes and pages, organized by feature. Each folder corresponds to a route in the application, for example:
- `app/blog/` - Blog pages and posts
- `app/destinations/` - Destination-specific pages
- `app/test-prep/` - Test preparation modules for exams like IELTS, TOEFL, CELPIP, OET, PTE, DET
- `app/josaa-counselling/` - Josaa counselling related pages
- `app/contact/` - Contact page
- `app/careers/` - Careers and job application pages
- `app/visa-assistance/` - Visa assistance information

### components/
Reusable React components used throughout the application. Organized by feature and UI elements, including:
- Navigation components
- Contact forms and info
- Destination cards and sections
- Test prep related components
- Testimonials and feedback components
- UI primitives and Radix UI wrappers

### hooks/
Custom React hooks for shared logic, such as scroll handling and toast notifications.

### lib/
Utility functions and data used across the app.

### public/
Static assets like images, sitemap files, and robots.txt.

## Technologies Used
- Next.js 13 with App Router
- React 18 with TypeScript
- Tailwind CSS for styling
- Radix UI for accessible UI components
- Framer Motion for animations
- React Hook Form for form management
- Next SEO for SEO optimization
- Various utility libraries (date-fns, clsx, zod, etc.)

## Running the Project
Refer to the main README.md for installation and running instructions.

## Contribution Guidelines
- Follow existing code style and conventions
- Use TypeScript types where applicable
- Run linting before committing
- Write clear commit messages

## Additional Notes
- The project uses Next.js dynamic routing and layouts extensively.
- Tailwind CSS is configured with custom themes and animations.
- SEO and sitemap generation are automated with next-seo and next-sitemap.
