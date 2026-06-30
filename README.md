# Jamstack Product Catalog PoC

## Overview

This Proof of Concept demonstrates a **Jamstack** architecture using **Astro** and **Supabase** to build a fast, statically generated product catalog.

## Key Features

- **Static Site Generation (SSG)**: All pages are pre-rendered at build time
- **Build-time Data Fetching**: Products are fetched from Supabase during `npm run build`
- **Zero JavaScript Runtime**: No client-side JavaScript is loaded by default
- **Supabase Integration**: PostgreSQL database with auto-generated REST API

## Architecture

```
├── astro.config.mjs        # Astro configuration (output: static)
├── package.json            # Dependencies and scripts
├── src/
│   └── pages/
│       ├── index.astro     # Product listing page
│       └── [id].astro      # Dynamic product detail page
├── supabase-schema.sql     # SQL schema for products table
├── .env                    # Environment variables (Supabase credentials)
└── tsconfig.json           # TypeScript configuration
```

## Getting Started

### Prerequisites

- Node.js (v18+)
- npm
- Supabase account

### Setup

1. Clone the repository
2. Create a Supabase project and run `supabase-schema.sql` in the SQL Editor
3. Copy your Supabase credentials to `.env`
4. Run `npm install`
5. Run `npm run build` to generate static files
6. Run `npm run preview` to serve locally

## Deployment

Deploy the `dist/` directory to any CDN:

- Vercel
- Netlify
- Cloudflare Pages

## Jamstack Principles

- **JavaScript**: Client-side interactivity (optional)
- **APIs**: Supabase REST API for data access
- **Markup**: Static HTML generated at build time

## Why Jamstack?

- **Performance**: No server-side rendering at request time
- **Security**: No server-side code to attack
- **Scalability**: Static files served from CDN
- **Developer Experience**: Modern tooling with zero runtime JS by default

## Limitations

This PoC does not include:

- Client-side interactivity (can be added with Astro components)
- User authentication (Supabase Auth can be added)
- Real-time updates (Supabase Realtime can be added)

## Learn More

- [Jamstack.org](https://jamstack.org)
- [Astro Docs](https://docs.astro.build)
- [Supabase Docs](https://supabase.com/docs)
