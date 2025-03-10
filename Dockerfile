FROM node:lts-alpine AS builder

WORKDIR /app

COPY ./package.json ./

RUN npm install

COPY . .

RUN npm run build

############################################################################
    # Coply build Data in NGINX Server for Production Level
############################################################################

FROM nginx

COPY --from=builder /app/build /usr/share/nginx/html

EXPOSE 80