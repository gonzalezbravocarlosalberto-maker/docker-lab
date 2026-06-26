# Pruebas Reales: Lab 1 (Hola Mundo)

**Autor:** Carlos Alberto Gonzalez Bravo  
**Fecha de ejecucion:** 2026-06-25  
**Entorno:** Docker Desktop 29.4.0 sobre Windows 11 / WSL2

---

## 1. Build de la imagen

Se construyo la imagen `hola_docker` a partir del `holamundo.dockerfile`:

```bash
$ docker build -f holamundo.dockerfile -t hola_docker .

#0 building with "desktop-linux" instance using docker driver
#1 [internal] load build definition from holamundo.dockerfile
#1 transferring dockerfile: 169B 0.0s done
#1 DONE 0.1s
#2 [internal] load metadata for docker.io/library/ubuntu:latest
#2 DONE 1.9s
#5 [1/2] FROM docker.io/library/ubuntu:latest
#5 sha256:81e2f2053c8fa702b6863... 41.56MB / 41.56MB 2.3s done
#5 DONE 3.9s
#6 [2/2] RUN apt-get update && apt-get install -y figlet
#6 Fetched 24.6 MB in 4s (6694 kB/s)
#6 Setting up figlet (2.2.5-3.1) ...
#6 DONE 7.4s
#7 exporting to image
#7 naming to docker.io/library/hola_docker:latest done
#7 DONE 2.0s
```

## 2. Ejecucion del contenedor

Se ejecuto el contenedor y se obtuvo la siguiente salida real de `figlet`:

```
$ docker run --rm hola_docker

 _   _       _         __  __                 _       
| | | | ___ | | __ _  |  \/  |_   _ _ __   __| | ___  
| |_| |/ _ \| |/ _` | | |\/| | | | | '_ \ / _` |/ _ \ 
|  _  | (_) | | (_| | | |  | | |_| | | | | (_| | (_) |
|_| |_|\___/|_|\__,_| |_|  |_|\__,_|_| |_|\__,_|\___/ 
                                                       
     _               _        ____             _             _ 
  __| | ___  ___  __| | ___  |  _ \  ___   ___| | _____ _ __| |
 / _` |/ _ \/ __|/ _` |/ _ \ | | | |/ _ \ / __| |/ / _ \ '__| |
| (_| |  __/\__ \ (_| |  __/ | |_| | (_) | (__|   <  __/ |  |_|
 \__,_|\___||___/\__,_|\___| |____/ \___/ \___|_|\_\___|_|  (_)
```

## Resultado

Prueba completada con exito. La imagen fue construida localmente y el contenedor devolvio el ASCII art esperado mediante figlet.
