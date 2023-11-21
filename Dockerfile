FROM ruby:3.2-alpine

RUN apk --update add build-base tzdata

WORKDIR /app

COPY Gemfile /app
COPY Gemfile.lock /app

ARG RACK_ENV=production
ENV RACK_ENV=$RACK_ENV
RUN if [[ "$RACK_ENV" == "production" ]]; then bundle install --without development test; else bundle install; fi

COPY . /app

EXPOSE 4567

CMD ["bundle", "exec", "puma", "-e", "production", "-p", "4567"]