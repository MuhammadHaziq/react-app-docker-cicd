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

WORKDIR /usr/share/nginx/html

RUN rm -rf ./*

COPY --from=builder /app/build /usr/share/nginx/html/react-app-docker-cicd

# # Copy the custom Nginx config to the proper directory
# COPY default.conf /etc/nginx/conf.d/default.conf

# copy nginx config and replace the default config with it
COPY ./nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80