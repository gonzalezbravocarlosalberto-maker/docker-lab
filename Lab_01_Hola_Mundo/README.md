# Lab 1: Hola Mundo en Docker

![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)
![Status](https://img.shields.io/badge/Status-Completed-success?style=for-the-badge)

## Objetivo

Comprender el ciclo de vida basico de un contenedor Docker: construccion de una imagen personalizada, ejecucion y verificacion de resultados.

## Arquitectura

![Arquitectura](./architecture.png)

## Archivos del laboratorio

| Archivo | Descripcion |
|---------|-------------|
| `holamundo.dockerfile` | Dockerfile basado en Ubuntu que instala `figlet` |
| `PRUEBAS.md` | Evidencia real de la ejecucion del laboratorio |

## Desarrollo

### 1. Dockerfile

Se creo un `Dockerfile` que parte de la imagen oficial de Ubuntu, instala la herramienta `figlet` (generador de texto ASCII) y define el comando de entrada:

```dockerfile
FROM ubuntu:latest
RUN apt-get update && apt-get install -y figlet
ENTRYPOINT ["figlet"]
CMD ["Hola Mundo desde Docker!"]
```

### 2. Construccion de la imagen

```bash
docker build -f holamundo.dockerfile -t hola_docker .
```

### 3. Ejecucion del contenedor

```bash
docker run --rm hola_docker
```

### 4. Salida real obtenida

```
 _   _       _         __  __                 _       
| | | | ___ | | __ _  |  \/  |_   _ _ __   __| | ___  
| |_| |/ _ \| |/ _` | | |\/| | | | | '_ \ / _` |/ _ \ 
|  _  | (_) | | (_| | | |  | | |_| | | | | (_| | (_) |
|_| |_|\___/|_|\__,_| |_|  |_|\__,_|_| |_|\__,_|\___/ 
```

## Evidencia

La evidencia completa de la ejecucion esta disponible en [PRUEBAS.md](./PRUEBAS.md).

## Conclusion

Este laboratorio demuestra el flujo completo de trabajo con Docker: escribir un Dockerfile, construir una imagen personalizada y ejecutar un contenedor efimero que produce un resultado visible.

---
**Autor:** Carlos Alberto Gonzalez Bravo  
*Especializacion en Ciberseguridad - UNIMINUTO*
