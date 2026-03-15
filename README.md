# Laboratorio Docker

## Construcción de la imagen

docker build -f holamundo.dockerfile -t hola_docker .

## Ejecución del contenedor

docker run hola_docker

## Resultado

El contenedor ejecuta la herramienta `figlet` para mostrar texto en formato ASCII desde una imagen basada en Ubuntu.

## Tecnologías usadas

- Docker
- Ubuntu
- Figlet
