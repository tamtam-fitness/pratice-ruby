FROM ruby:latest

WORKDIR /usr/app/

COPY ./src/Gemfile Gemfile

RUN gem install bundler && bundle install