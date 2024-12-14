FROM node

WORKDIR /app

COPY package.json /app

RUN npm install

COPY . /app

RUN npx prisma generate

EXPOSE 3000

CMD ["sh", "-c", "npx prisma migrate deploy && npm run dev"]
