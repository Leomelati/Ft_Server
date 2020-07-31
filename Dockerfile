FROM debian:buster
COPY ./src /src/
RUN bash /src/setup.sh
EXPOSE 80
ENTRYPOINT bash /src/start.sh
CMD tail -f /dev/null