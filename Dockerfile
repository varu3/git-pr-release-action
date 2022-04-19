FROM ruby:3.0.0-alpine3.13

RUN apk --update --no-cache upgrade && \
    apk --no-cache add tzdata && \
    apk add --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/v3.12/main git=2.26.3-r1 && \
    gem install --no-document git-pr-release

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
