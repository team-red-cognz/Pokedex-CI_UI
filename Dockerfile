#Dockerfile to set up the UI for pokedex
FROM node:10.16.0-alpine as build-stage
WORKDIR /build
COPY . .
#COPY UI directory contents
#Install dependencies
RUN npm install

RUN npm run build


#FROM nginx:latest
#WORKDIR /app
#COPY --from=build-stage /build/dist .
#COPY nginx.conf /etc/nginx/nginx.conf
