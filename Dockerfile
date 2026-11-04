FROM nginx:stable-alpine

ARG APP_VERSION=v42
RUN printf 'Contoso Orders %s\n' "$APP_VERSION" > /usr/share/nginx/html/index.html
