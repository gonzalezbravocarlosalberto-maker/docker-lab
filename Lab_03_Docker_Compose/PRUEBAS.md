# Pruebas Reales: Lab 3 (Docker Compose)

**Autor:** Carlos Alberto Gonzalez Bravo  
**Fecha de ejecucion:** 2026-06-25  
**Entorno:** Docker Desktop 29.4.0 / Docker Compose v5.1.2 sobre Windows 11 / WSL2

---

## 1. Levantamiento de la infraestructura

Se ejecuto `docker compose up -d` con el archivo `docker-compose.yml` que define dos servicios: **nginx** (web) y **redis** (db):

```bash
$ docker compose up -d

Network lab_03_docker_compose_default Creating
Network lab_03_docker_compose_default Created
Container lab_03_docker_compose-db-1 Creating
Container lab_03_docker_compose-web-1 Creating
Container lab_03_docker_compose-db-1 Created
Container lab_03_docker_compose-web-1 Created
Container lab_03_docker_compose-web-1 Starting
Container lab_03_docker_compose-db-1 Starting
Container lab_03_docker_compose-db-1 Started
Container lab_03_docker_compose-web-1 Started
```

## 2. Verificacion del estado de los contenedores

```bash
$ docker compose ps

NAME                          IMAGE          COMMAND                  SERVICE   CREATED         STATUS         PORTS
lab_03_docker_compose-db-1    redis:alpine   "docker-entrypoint.s..."   db        5 seconds ago   Up 5 seconds   6379/tcp
lab_03_docker_compose-web-1   nginx:alpine   "/docker-entrypoint...."   web       5 seconds ago   Up 5 seconds   0.0.0.0:8081->80/tcp, [::]:8081->80/tcp
```

Ambos contenedores estan en estado **Up** y el servicio web expone el puerto **8081**.

## 3. Limpieza

```bash
$ docker compose down
```

## Resultado

Prueba completada con exito. Docker Compose orquesto ambos contenedores (nginx + redis) correctamente en una red compartida.
