FROM debian:buster
WORKDIR /src
COPY ./src /src
RUN bash setup.sh
