# Gravity Exam Platform

A premium, production-ready Online Quiz & Exam Platform built with Next.js 14, Turso, and Docker.

## Tech Stack
- **Frontend**: Next.js 14 (App Router), TypeScript, Tailwind CSS
- **Database**: Turso (SQLite Edge DB)
- **Auth**: NextAuth.js v5
- **Sandbox**: Isolated Docker-based Node.js execution service
- **Charts**: Recharts
- **PDF Export**: @react-pdf/renderer
- **Excel Import**: SheetJS (xlsx)

## Project Structure
- `/frontend`: Next.js application
- `/sandbox`: Code execution service

## Setup Instructions

### 1. Database Setup
1. Create a Turso database and get the `TURSO_DATABASE_URL` and `TURSO_AUTH_TOKEN`.
2. Run the initialization script (after setting env vars):
   ```bash
   cd frontend
   npm install
   npx ts-node --esm src/lib/seed.ts
   ```

### 2. Sandbox Service
1. Navigate to `/sandbox`
2. Install dependencies: `npm install`
3. Build and run the Docker image (ensure Docker is running):
   ```bash
   docker build -t sandbox-image .
   ```
4. Start the service: `npm run dev`

### 3. Frontend Service
1. Navigate to `/frontend`
2. Create `.env.local` based on `.env.local.example`.
3. Start the development server: `npm run dev`

### 4. Create Initial Admin
Run the following to create the first admin user:
```bash
npx ts-node --esm src/lib/create-admin.ts
```

## Features
- **Admin**: Dashboard, Exam Management, Question Builder (MCQ, Short, Coding), Excel Import, Student Management, Analytics.
- **Student**: Dashboard, Countdown Timer, Auto-save Answers, Coding Sandbox with Test Cases, Leaderboard, History.
- **Security**: Server-side timer calculation, Docker-isolated code execution, Role-based middleware.

## Deployment
- **Frontend**: Deploy to Vercel.
- **Sandbox**: Deploy to Render as a separate service with Docker support.
- **Database**: Turso.
