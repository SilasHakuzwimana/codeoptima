# backend/Dockerfile
FROM node:18-slim AS base

# Install PNPM
RUN npm install -g pnpm@8

WORKDIR /app

# Copy workspace files
COPY pnpm-lock.yaml pnpm-workspace.yaml .npmrc ./
COPY package.json turbo.json ./

# Copy packages (optimized layer caching)
COPY packages/shared-types ./packages/shared-types
COPY backend ./backend

# Install with frozen lockfile
RUN pnpm install --frozen-lockfile --prod

# Build
RUN pnpm --filter backend build

# Cleanup
RUN pnpm prune --prod

EXPOSE 3000
CMD ["node", "backend/dist/server.js"]