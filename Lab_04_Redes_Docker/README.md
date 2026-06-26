# Lab 4: Gestion de Redes en Docker

![Docker Network](https://img.shields.io/badge/Docker_Network-2496ED?style=for-the-badge&logo=docker&logoColor=white)
![Alpine](https://img.shields.io/badge/Alpine-0D597F?style=for-the-badge&logo=alpinelinux&logoColor=white)
![Status](https://img.shields.io/badge/Status-Completed-success?style=for-the-badge)

## Objetivo

Explorar los distintos controladores de red de Docker (bridge, host, none) y demostrar el aislamiento logico entre contenedores en redes separadas.

## Arquitectura

![Arquitectura](./architecture.png)

## Archivos del laboratorio

| Archivo | Descripcion |
|---------|-------------|
| `PRUEBAS.md` | Evidencia real de la ejecucion del laboratorio |

## Desarrollo

### 1. Creacion de redes personalizadas

Se crearon dos redes Docker independientes para simular segmentacion:

```bash
$ docker network create app_net
4d7060f7ed65573f27c0622484825d45437bb2f5df00bc72ac856bd8b73af5ad

$ docker network create db_net
a08bef8ce513e8790788dad5f1afdadcf0f1ce1adc6741c286e9a60a8d5b3f0c
```

### 2. Despliegue de contenedores en redes aisladas

```bash
$ docker run -dit --name app_server --network app_net alpine sh
d3cba4cbdcd4f575d87d6760e43affc8f1a32a05d042c67024d2a1faedeeb149

$ docker run -dit --name db_server --network db_net alpine sh
797fc9edccdd393e98e41158f64aa55a37fba393200b4f728d940b8b82721e4a
```

### 3. Prueba de aislamiento de red

Se intento hacer ping desde `app_server` (en `app_net`) hacia la IP de `db_server` (en `db_net`):

```bash
$ docker exec app_server ping -c 2 172.21.0.2
ping: bad address '172.21.0.2'
```

**El ping falla.** Esto demuestra que los contenedores en redes distintas no pueden comunicarse entre si. Este aislamiento es fundamental para el principio de **minimo privilegio en red** y para prevenir movimientos laterales en caso de compromiso de un contenedor.

### 4. Limpieza

```bash
docker rm -f app_server db_server
docker network rm app_net db_net
```

## Evidencia

La evidencia completa de la ejecucion esta disponible en [PRUEBAS.md](./PRUEBAS.md).

## Conclusion

El aislamiento de red en Docker previene movimientos laterales no autorizados y es una practica critica de **DevSecOps**. Las redes personalizadas permiten segmentar servicios segun su funcion (frontend, backend, base de datos), mejorando significativamente la postura de seguridad.

---
**Autor:** Carlos Alberto Gonzalez Bravo  
*Especializacion en Ciberseguridad - UNIMINUTO*
