FROM node:alpine
WORKDIR /app
RUN apk --no-cache add curl
COPY package*.json ./
RUN npm install
COPY * ./
RUN npm run build
USER node
EXPOSE 4000
ENTRYPOINT ["npm", "start"]
