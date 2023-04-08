FROM ruby:3.2.0-slim

RUN apt-get update
RUN apt-get -yq install vim nodejs postgresql-client git build-essential libpq-dev curl

WORKDIR /usr/src/cms-app

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . /usr/src

CMD ["rails", "server", "-b", "0.0.0.0", "-p", "3002"]
