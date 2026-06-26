# Lab 2: Acceso Publico de Contenedores

![Nginx](https://img.shields.io/badge/Nginx-009639?style=for-the-badge&logo=nginx&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)
![Status](https://img.shields.io/badge/Status-Completed-success?style=for-the-badge)

## Objetivo

Aprender a exponer puertos de un contenedor hacia el host para permitir acceso publico a servicios web.

## Arquitectura

![Arquitectura](./architecture.png)

## Archivos del laboratorio

| Archivo | Descripcion |
|---------|-------------|
| `PRUEBAS.md` | Evidencia real de la ejecucion del laboratorio |

## Desarrollo

### 1. Despliegue de Nginx con mapeo de puertos

Se despliega un servidor web Nginx mapeando el puerto 8080 del host al puerto 80 del contenedor:

```bash
docker run -d --name mi_servidor_web -p 8080:80 nginx
```

### 2. Verificacion de puertos expuestos

```bash
$ docker port mi_servidor_web
80/tcp -> 0.0.0.0:8080
80/tcp -> [::]:8080
```

### 3. Prueba de acceso HTTP real

Se realizo una peticion HTTP al servidor desplegado:

```
$ Invoke-WebRequest -Uri "http://localhost:8080"

StatusCode: 200

Headers:
  Connection     : keep-alive
  Content-Type   : text/html
  Server         : nginx/1.29.8
```

El servidor respondio con **HTTP 200 OK**, confirmando que el contenedor es accesible desde el host.

### 4. Limpieza

```bash
docker rm -f mi_servidor_web
```

## Evidencia

La evidencia completa de la ejecucion esta disponible en [PRUEBAS.md](./PRUEBAS.md).

## Conclusion

La exposicion de puertos (Port Binding) con el flag `-p` es fundamental para comunicar servicios en contenedores con el mundo exterior. Este concepto es la base de cualquier arquitectura de microservicios en produccion.

---
**Autor:** Carlos Alberto Gonzalez Bravo  
*Especializacion en Ciberseguridad - UNIMINUTO*
