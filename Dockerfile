FROM node:14-alpine3.12

WORKDIR /app
ENV PATH /app/node_modules/.bin:$PATH

COPY app /app

RUN \
    apk add --update --no-cache git && \
    npm install --silent && \
    npm install react-scripts@3.4.1 -g

CMD ["npm", "start"]