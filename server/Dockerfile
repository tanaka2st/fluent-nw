FROM fluent/fluentd:v1.9
USER root
RUN apk update
RUN apk upgrade
RUN apk add --no-cache ruby-dev 
RUN apk add --no-cache alpine-sdk 
RUN gem install fluent-plugin-add-uuid
RUN gem install fluent-plugin-mongo
USER fluent