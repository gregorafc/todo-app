FROM ruby:3.1.2-alpine3.16

RUN apk --update add build-base tzdata postgresql-dev postgresql-client libxslt-dev libxml2-dev

# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 1

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .

EXPOSE 3000

ENV BACKEND_DATABASE_URL default
ENV BACKEND_DATABASE_USERNAME default
ENV BACKEND_DATABASE_PASSWORD default

CMD ["rails", "server", "-b", "0.0.0.0"]