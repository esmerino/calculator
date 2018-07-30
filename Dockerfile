FROM ruby:2.5

RUN apt-get update && apt-get install -y build-essential nodejs

WORKDIR /tmp

COPY Gemfile Gemfile.lock ./

RUN gem install bundler && bundle install --jobs 30 --retry 5

RUN mkdir -p /app

WORKDIR /app

COPY . ./

ENTRYPOINT ["bundle", "exec"]

CMD ["foreman", "start"]