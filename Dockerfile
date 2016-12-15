FROM bitwalker/alpine-elixir:1.3.4

MAINTAINER <github XOfSpades>

RUN apk add --update bash && rm -rf /var/cache/apk/*

RUN mix local.hex --force && \
    mix local.rebar --force

RUN mkdir /multi_db

WORKDIR /multi_db

RUN mkdir /multi_db/_build

COPY priv/ /multi_db/priv
COPY mix.exs /multi_db
COPY mix.lock /multi_db
COPY config/ /multi_db/config
COPY test/ /multi_db/test
COPY lib/ /multi_db/lib

RUN mix do deps.get, deps.compile
