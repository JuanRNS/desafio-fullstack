FROM node:20-alpine AS build
WORKDIR /build
COPY ./package*.json ./
RUN npm ci
COPY . .
RUN npm run build

FROM nginx:alpine

COPY .nginx.conf /etc/nginx/conf.d/default.conf
COPY --from=build /build/dist/desafio-full-stack/browser /var/www/html/

EXPOSE 3000

ENTRYPOINT ["nginx","-g","daemon off;"]
