FROM ruby:2.3.3
MAINTAINER Dan Itsara <dan@glazziq.com>
#  Sets up development environment

RUN apt-get update -qq && \
  apt-get install -y \
    build-essential \
    libpq-dev \
    nodejs \
    nodejs-legacy \
    npm \
    imagemagick

RUN gem update --system
RUN gem install bundler

ENV app /app
RUN mkdir $app
WORKDIR $app

# Install gems in local directory
ENV BUNDLE_PATH $app/bundles

ADD . /app
