FROM alpine:3.13.5
WORKDIR /work
RUN apk update && apk add curl && \
  curl -LJ https://github.com/swaggo/swag/releases/download/v1.7.0/swag_1.7.0_Linux_x86_64.tar.gz --output swag_1.7.0.tar.gz && \
  tar -xzvf swag_1.7.0.tar.gz swag && \
  mv swag /bin/swag && \
  rm swag_1.7.0.tar.gz
