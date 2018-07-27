FROM ruby:2.5.1
MAINTAINER wgarcia@eventsite.com.co
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs imagemagick
RUN mkdir /app
WORKDIR /app
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
RUN bundle install
EXPOSE 3000
CMD bash
