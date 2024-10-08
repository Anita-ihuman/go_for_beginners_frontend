FROM node:16-alpine
WORKDIR /app
COPY ./server /app/server package*.json ./
RUN npm install
COPY . .
RUN npm run build
EXPOSE 3000
CMD ["npx", "serve", "build" "./server"]
