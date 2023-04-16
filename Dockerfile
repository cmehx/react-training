FROM node:16.15.1

COPY . /app
WORKDIR /app

ENV PATH=/node_modules/.bin:$PATH
ENV PORT=3000
ENV HOST=0.0.0.0
ENV BROWSER='none'

RUN npm install --legacy-peer-deps
RUN npm update --legacy-peer-deps

EXPOSE 3000

CMD [ "npm", "start" ]
