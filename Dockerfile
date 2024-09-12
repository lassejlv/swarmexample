FROM node:lts-alpine

WORKDIR /app
COPY . .

RUN npm install -f
RUN npm run build

EXPOSE 3000
EXPOSE 8080

CMD ["node", ".next/standalone/server.js"]