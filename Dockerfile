FROM node:24 AS build-base
RUN mkdir -p /build
WORKDIR /build
COPY package*.json ./
RUN yarn
RUN yarn playwright install-deps

FROM build-base AS build-presentation
ENV SLIDE_NAME="presentation"
COPY ./slides/$SLIDE_NAME .
RUN yarn slidev build ./slides.md --base /slides/$SLIDE_NAME/ && mkdir -p ./build/slides/$SLIDE_NAME && mv dist/* ./build/slides/$SLIDE_NAME

FROM build-base AS build-cours
ENV SLIDE_NAME="cours"
COPY ./slides/$SLIDE_NAME .
RUN yarn slidev build ./slides.md --base /slides/$SLIDE_NAME/ && mkdir -p ./build/slides/$SLIDE_NAME && mv dist/* ./build/slides/$SLIDE_NAME


FROM nginx:1.27.0-alpine

RUN rm -r /usr/share/nginx/html/*

COPY nginx.config /etc/nginx/conf.d/default.conf
COPY --from=build-cours /build/build/ /usr/share/nginx/html
COPY --from=build-presentation /build/build/ /usr/share/nginx/html
