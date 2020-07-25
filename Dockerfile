FROM debian:buster
EXPOSE 80
WORKDIR /src
COPY ./src /src
RUN bash setup.sh
