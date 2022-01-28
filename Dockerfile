FROM node:16

RUN mkdir -p /home/node/app && chown -R node:node /home/node/app
WORKDIR /home/node/app
COPY ./web.js ./
COPY . .
COPY --chown=node:node . .
USER node
EXPOSE 3000

CMD [ "npm run web.js" ]