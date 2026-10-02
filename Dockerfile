FROM node:24-alpine AS base
WORKDIR /app
COPY package*.json ./

FROM base AS dev
RUN npm ci
CMD ["node", "--watch", "src/index.js"]

FROM base AS prod
RUN npm ci --omit=dev --ignore-scripts
COPY src ./src
CMD ["node", "src/index.js"]
