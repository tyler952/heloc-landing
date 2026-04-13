FROM node:22-alpine
WORKDIR /app
COPY package.json .
RUN npm install
COPY . .
CMD npx serve . -l tcp://0.0.0.0:$PORT
