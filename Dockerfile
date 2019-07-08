FROM ruby:2.5.5
MAINTAINER docker-library <docker-library@github.com>

RUN apt-get update -y
WORKDIR /app

ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock
RUN gem install bundler
RUN bundle install --jobs 8

ADD . /app

EXPOSE 5555

CMD ["rackup", "-o", "0.0.0.0", "-p", "5555"]
