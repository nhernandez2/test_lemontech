FROM ruby:3.3.3

ARG RAILS_ENV=development
ARG RAILS_MASTER_KEY
ENV RAILS_MASTER_KEY=$RAILS_MASTER_KEY

WORKDIR /rails

RUN apt-get update -qq && \
    apt-get install --no-install-recommends -y \
    build-essential \
    default-libmysqlclient-dev \
    git \
    nodejs \
    yarn \
    libvips \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENV RAILS_ENV=${RAILS_ENV}
ENV BUNDLE_PATH=/usr/local/bundle

# Copiar Gemfile y Gemfile.lock para instalar gemas
COPY Gemfile Gemfile.lock ./

# Instalar las gemas necesarias
RUN bundle install

COPY . .

RUN mkdir -p tmp/pids && \
    chown -R root:root /rails

# Exponer el puerto que utiliza el servidor Rails
EXPOSE 3000