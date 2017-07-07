FROM gliderlabs/alpine:3.2

RUN apk --update add \
  ca-certificates \
  jq

ADD cmd/check/check /opt/resource/check
ADD cmd/in/in /opt/resource/in
ADD cmd/out/out /opt/resource/out

RUN chmod +x /opt/resource/*