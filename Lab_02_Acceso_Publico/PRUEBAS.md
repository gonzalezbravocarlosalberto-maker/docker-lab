# Pruebas Reales: Lab 2 (Acceso Publico de Contenedores)

**Autor:** Carlos Alberto Gonzalez Bravo  
**Fecha de ejecucion:** 2026-06-25  
**Entorno:** Docker Desktop 29.4.0 sobre Windows 11 / WSL2

---

## 1. Despliegue del contenedor Nginx

Se lanzo un contenedor Nginx exponiendo el puerto 8080 del host al puerto 80 del contenedor:

```bash
$ docker run -d --name mi_servidor_web -p 8080:80 nginx
6213477bc3704aa0dc535d5ff750c3af29e86f116fb020e6947433829ce0ed70
```

## 2. Verificacion de puertos expuestos

```bash
$ docker port mi_servidor_web
80/tcp -> 0.0.0.0:8080
80/tcp -> [::]:8080
```

El puerto 80 del contenedor esta correctamente mapeado al puerto 8080 del host.

## 3. Prueba de acceso HTTP

Se realizo una peticion HTTP real al servidor:

```
$ Invoke-WebRequest -Uri "http://localhost:8080"

StatusCode: 200

Headers:
  Connection     : keep-alive
  Accept-Ranges  : bytes
  Content-Length  : 896
  Content-Type   : text/html
  Date           : Fri, 26 Jun 2026 03:24:28 GMT
  ETag           : "69d4ec68-380"
  Last-Modified  : Tue, 07 Apr 2026 11:37:12 GMT
  Server         : nginx/1.29.8
```

## 4. Limpieza

```bash
$ docker rm -f mi_servidor_web
```

## Resultado

Prueba completada con exito. Nginx respondio con HTTP 200 en el puerto 8080 del host.
