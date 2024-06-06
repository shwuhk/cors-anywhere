FROM node:14-alpine

ENV NODE_ENV=production
ENV NODE_PATH=/usr/local/lib/node_modules
ARG version=latest
COPY . .
RUN npm install
CMD ["node", "server.js"]

EXPOSE 8080