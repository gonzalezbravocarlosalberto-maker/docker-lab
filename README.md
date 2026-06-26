# 🐳 Docker Lab: Práctica de Contenedores

![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)
![Ubuntu](https://img.shields.io/badge/Ubuntu-E95420?style=for-the-badge&logo=ubuntu&logoColor=white)
![Status](https://img.shields.io/badge/Status-Completed-success?style=for-the-badge)

Laboratorio práctico para la creación, gestión y ejecución de imágenes y contenedores utilizando Dockerfile. Este ejercicio forma parte de mis prácticas en la Especialización en Ciberseguridad, enfocado en el despliegue de infraestructuras ligeras.

## 📝 Descripción

Este proyecto consiste en la creación de una imagen Docker personalizada basada en Ubuntu. Durante el proceso de construcción de la imagen (`build`), se automatiza la actualización del sistema y la instalación de la herramienta **figlet**, la cual permite generar textos en arte ASCII.

El objetivo es demostrar el conocimiento básico sobre:
- Creación de archivos `Dockerfile`.
- Construcción de imágenes locales.
- Publicación y descarga de imágenes desde repositorios públicos (Docker Hub).
- Ejecución aislada de procesos.

## 🚀 Uso Rápido (Docker Hub)

Puedes descargar y ejecutar la imagen directamente desde Docker Hub sin necesidad de construirla localmente:

```bash
# Descargar la imagen
docker pull gonzalezbravocarlos/docker-lab

# Ejecutar el contenedor (si la imagen expone el comando por defecto)
docker run gonzalezbravocarlos/docker-lab
```

## 🛠️ Construcción Local

Si prefieres construir la imagen en tu propio entorno:

1. Clona el repositorio:
   ```bash
   git clone https://github.com/gonzalezbravocarlosalberto-maker/docker-lab.git
   cd docker-lab
   ```

2. Construye la imagen utilizando el archivo `holamundo.dockerfile`:
   ```bash
   docker build -f holamundo.dockerfile -t hola_docker .
   ```

3. Ejecuta el contenedor:
   ```bash
   docker run hola_docker
   ```

---

**Autor:** Carlos Alberto González Bravo  
*Ingeniero Industrial | Especialización en Ciberseguridad (UNIMINUTO)*
