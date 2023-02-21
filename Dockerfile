############
# Base image
############
FROM node:18.13.0-alpine as base-image

WORKDIR /app

COPY ./ /app

RUN npm set progress=false && npm install

EXPOSE 80

RUN npm run build
CMD npm run start

