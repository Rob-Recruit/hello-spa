### STAGE 1: Build Angular image ###
FROM node:12-alpine AS build
RUN npm update && npm install -g @angular/cli
WORKDIR /usr/src/app
COPY package.json ./
RUN npm install
COPY . .
RUN ng build --prod

### STAGE 2: Run Hello-spa application on nginx server ###
FROM nginx:1.17.1-alpine
COPY --from=build /usr/src/app/dist/hello-spa /usr/share/nginx/html

