# 🏗️ Laboratorio 3: Docker Compose

![Docker Compose](https://img.shields.io/badge/Docker_Compose-2496ED?style=for-the-badge&logo=docker&logoColor=white)
![Status](https://img.shields.io/badge/Status-Completed-success?style=for-the-badge)

## 🎯 Objetivo
Orquestar múltiples contenedores de forma declarativa usando un archivo `docker-compose.yml`.

## 🖼️ Arquitectura
![Arquitectura](./architecture.png)

## 🛠️ Desarrollo

Se crea un escenario de múltiples servicios (Ej: Frontend y Base de Datos) que se levantan simultáneamente.

### docker-compose.yml
```yaml
version: '3.8'
services:
  web:
    image: nginx:alpine
    ports:
      - "8080:80"
  db:
    image: redis:alpine
```

### Comandos de Ejecución
```bash
# Levantar toda la infraestructura
docker-compose up -d

# Ver estado
docker-compose ps
```

## ✅ Conclusión
Docker Compose simplifica enormemente el despliegue de arquitecturas multicontenedor para entornos de desarrollo y pruebas.
