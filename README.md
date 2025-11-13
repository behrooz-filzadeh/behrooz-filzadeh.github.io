# Personal Website

## Overview

A personal website built with Hugo to promote my personal brand and professional presence online. 
This project showcases collaboration through Git version control and serves as a platform for sharing my work, thoughts, and expertise.

## Live Demo

<div align="center">

### 🚀 Visit the Live Site

[![Vercel Deployment](https://img.shields.io/badge/Vercel-000000?style=for-the-badge&logo=vercel&logoColor=white)](https://personal-website-bnlermwry-bs-projects-aa448e1f.vercel.app/)
[![Netlify Deployment](https://img.shields.io/badge/Netlify-00C7B7?style=for-the-badge&logo=netlify&logoColor=white)](https://main--jovial-kangaroo-8cf6d9.netlify.app/)

---

**🌐 Direct Links:**

| Platform | URL |
|----------|-----|
| 🟢 Vercel | [personal-website-bnlermwry-bs-projects-aa448e1f.vercel.app](https://personal-website-bnlermwry-bs-projects-aa448e1f.vercel.app/) |
| 🔷 Netlify | [main--jovial-kangaroo-8cf6d9.netlify.app](https://main--jovial-kangaroo-8cf6d9.netlify.app/) |

</div>

## Development

To run the development server:

```bash
hugo server -D
```

The site will be available at `http://localhost:1313`. Changes are automatically reloaded!

## Running Locally with Docker

This project includes a Makefile that simplifies Docker operations. The Makefile automatically detects whether you have Docker or Podman installed and uses the appropriate command to mange the container.

### Prerequisites

- Docker or Podman installed on your system
- Make utility

### Quick Start

1. **Build and run the application:**
   ```bash
   make run
   ```
   This will automatically build the Docker image and start the container in detached mode.

2. **Access the application:**
   Open your browser and navigate to `http://localhost`

### Available Commands

- `make build` - Build the Docker image
- `make run` - Build and run the container (runs build automatically)
- `make stop` - Stop the running container
- `make clean` - Stop, remove the container, and delete the image

## Installing Hugo

See the [Hugo releases page](https://github.com/gohugoio/hugo/releases) for installation instructions.
