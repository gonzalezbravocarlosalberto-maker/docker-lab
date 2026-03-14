FROM ubuntu

RUN apt update && apt install -y figlet

CMD figlet "Hola desde Docker"