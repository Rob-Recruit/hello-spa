# Build Angular image (based on official node image)
FROM node:12-alpine AS build
RUN npm update && npm install -g @angular/cli
WORKDIR /usr/src/app
COPY package.json ./
RUN npm install
COPY . .
RUN ng build --prod
#------------------------------------------------------------------
# Build new image based on angular for Hello-spa application served on nginx server (official image)
FROM nginx:1.17.1-alpine
COPY --from=build /usr/src/app/dist/hello-spa /usr/share/nginx/html

