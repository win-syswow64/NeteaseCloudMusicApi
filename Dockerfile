FROM node:lts


ENV NODE_ENV production
USER node

WORKDIR /app

COPY --chown=node:node . ./

RUN yarn

EXPOSE 3000

CMD [ "node", "app.js" ]
