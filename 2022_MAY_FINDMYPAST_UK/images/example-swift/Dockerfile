FROM swift:5.4

RUN apt update --quiet \
 && apt install --quiet --yes libmysqlclient-dev

WORKDIR /app

COPY Package.swift .
RUN swift package resolve

COPY . .
RUN swift build
