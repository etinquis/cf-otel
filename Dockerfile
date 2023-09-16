FROM node
VOLUME [ "/app/node_modules" ]

COPY . /app
WORKDIR /app
RUN npm ci

ENTRYPOINT [ "npx", "wrangler", "dev" ]