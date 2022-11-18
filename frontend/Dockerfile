FROM node:18.12.1

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

ENV PORT 3001
ENV REACT_APP_API_URL localhost

EXPOSE $PORT

CMD ["npm", "start"]