# 🐳 Laboratorio 1: Hola Mundo en Docker

![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)
![Status](https://img.shields.io/badge/Status-Completed-success?style=for-the-badge)

## 🎯 Objetivo
Comprender el ciclo de vida básico de un contenedor: obtención de imagen, ejecución y verificación.

## 🖼️ Arquitectura
![Arquitectura](./architecture.png)

## 🛠️ Desarrollo

Para este laboratorio básico, ejecutamos un contenedor a partir de una imagen de Ubuntu y mostramos un mensaje.

```bash
# 1. Descargar la imagen
docker pull ubuntu:latest

# 2. Ejecutar el contenedor con un comando
docker run ubuntu echo "Hola Mundo desde Docker!"
```

## ✅ Conclusión
Este laboratorio sienta las bases de la ejecución aislada de procesos.
