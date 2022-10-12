FROM ubuntu:20.04

RUN apt update --quiet \
 && apt install --quiet --yes clang libmysqlclient-dev

WORKDIR /app

COPY example.c ./
RUN clang -o example example.c `mysql_config --cflags --libs`
