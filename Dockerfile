FROM alpine:edge

ARG AUUID="47472cc0-f0b7-4c2b-8e07-dde2b79caf3b"
ARG CADDYIndexPage="https://www.free-css.com/assets/files/free-css-templates/download/page278/catalog-z.zip"
ARG ParameterSSENCYPT="chacha20-ietf-poly1305"
ARG PORT=8080

ADD etc/Caddyfile /tmp/Caddyfile
ADD etc/xray.json /tmp/xray.json
ADD deploy.sh /deploy.sh
ADD start.sh /start.sh

RUN apk update && \
    apk add --no-cache ca-certificates bash caddy tor unzip wget && \
    bash deploy.sh

RUN chmod +x /start.sh

CMD /start.sh
