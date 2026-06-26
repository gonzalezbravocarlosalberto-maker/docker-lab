FROM ubuntu:latest
RUN apt-get update && apt-get install -y figlet
ENTRYPOINT ["figlet"]
CMD ["Hola Mundo desde Docker!"]
