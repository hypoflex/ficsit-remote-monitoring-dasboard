FROM docker.io/node:18-alpine
RUN mkdir -p /app
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm install
COPY / .
ENV PORT=3000
EXPOSE $PORT
CMD [ "npm", "start"]