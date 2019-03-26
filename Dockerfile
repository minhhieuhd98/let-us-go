FROM ruby:2.5.3

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - && \
apt-get install nodejs
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
apt-get update && apt-get install -y yarn
RUN mkdir /usr/src/app
WORKDIR /usr/src/app
COPY Gemfile* /usr/src/app/
RUN gem install bundler -v '2.0.1' && bundle install
COPY . /usr/src/app/
