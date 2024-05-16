FROM ruby:2.7.8-alpine

RUN apk update && apk add --no-cache build-base bash

RUN mkdir /app
WORKDIR /app

COPY Gemfile* /app
COPY drivin.gemspec /app
COPY lib/drivin/version.rb /app/lib/drivin/version.rb

RUN bundle install

COPY . /app
