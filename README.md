# Docker Lab

Laboratorio de Docker para creación de imágenes y contenedores.

## Imagen en Docker Hub

docker pull gonzalezbravocarlos/docker-lab

## Construcción de la imagen

docker build -f holamundo.dockerfile -t hola_docker .

## Ejecución del contenedor

docker run hola_docker

## Descripción

Este laboratorio crea una imagen basada en Ubuntu que instala la herramienta **figlet** para mostrar texto en formato ASCII dentro de un contenedor Docker.

## Autor

Carlos Alberto González Bravo
Ingeniero Industrial | Especialización en Ciberseguridad
