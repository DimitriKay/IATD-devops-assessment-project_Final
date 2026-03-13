FROM node:20.12-alpine

COPY package.json package-lock.json ./

RUN npm install

COPY ./ ./


#clean up the cache to reduce image size
RUN rm -rf node_modules/ && rm -rf .github/ && rm -rf .gitignore \ && rm -rf Dockerfile/user.Dockerfile

CMD [ "npm", "test" ]