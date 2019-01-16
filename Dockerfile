FROM node
WORKDIR /app
COPY gatsby-*.js ./
COPY package*.json ./
RUN npm ci
COPY src ./src
ENTRYPOINT [ "npm", "run", "build" ]