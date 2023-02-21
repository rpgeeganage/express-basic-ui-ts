############
# Base image
############
FROM node:18.13.0-alpine as base-image

RUN npm set progress=false && npm install

COPY ./ /app

EXPOSE 80
RUN npm run build
CMD npm run start

