FROM node:23 AS build-base
RUN mkdir -p /build
WORKDIR /build
COPY package*.json ./
RUN npm ci
RUN npx playwright install-deps

FROM build-base AS build-presentation
ENV SLIDE_NAME="presentation"
COPY ./slides/$SLIDE_NAME .
RUN (trap 'kill 0' SIGINT; \
  (npx slidev build ./slides.md --base /slides/$SLIDE_NAME/ && mkdir -p ./build/slides/$SLIDE_NAME && mv dist/* ./build/slides/$SLIDE_NAME) & \
  (npx slidev export ./slides.md --per-slide --output $SLIDE_NAME --timeout 60000 && mkdir -p ./build/pdfs && mv $SLIDE_NAME.pdf ./build/pdfs) & \
  wait)

FROM build-base AS build-cours
ENV SLIDE_NAME="cours"
COPY ./slides/$SLIDE_NAME .
RUN (trap 'kill 0' SIGINT; \
  (npx slidev build ./slides.md --base /slides/$SLIDE_NAME/ && mkdir -p ./build/slides/$SLIDE_NAME && mv dist/* ./build/slides/$SLIDE_NAME) & \
  (npx slidev export ./slides.md --per-slide --output $SLIDE_NAME --timeout 60000 && mkdir -p ./build/pdfs && mv $SLIDE_NAME.pdf ./build/pdfs) & \
  wait)


FROM nginx:1.27.0-alpine

RUN rm -r /usr/share/nginx/html/*

COPY nginx.config /etc/nginx/conf.d/default.conf
COPY --from=build-cours /build/build/ /usr/share/nginx/html
COPY --from=build-presentation /build/build/ /usr/share/nginx/html
