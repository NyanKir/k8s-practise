FROM node:20.10.0

WORKDIR /app
COPY . .

CMD ["node", "src/index.js"]
EXPOSE 8000