FROM ruby:3.2.0-slim

RUN apt-get update
RUN apt-get -yq install vim nodejs postgresql-client git build-essential libpq-dev curl

# install heroku-cli for convenience
# RUN curl https://cli-assets.heroku.com/install.sh | sh

# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 1

WORKDIR /usr/src/app


COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . /usr/src

CMD ["rails", "server", "-b", "0.0.0.0", "-p", "3000"]
