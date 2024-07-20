FROM node:20.9.0-alpine
WORKDIR /app
COPY . /app/
RUN export NODE_OPTIONS="--max-old-space-size=8192"
RUN apk add --no-cache git
RUN yarn
RUN yarn lint
RUN yarn build
