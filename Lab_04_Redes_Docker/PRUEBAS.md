# Pruebas Reales: Lab 4 (Redes en Docker)

**Autor:** Carlos Alberto Gonzalez Bravo  
**Fecha de ejecucion:** 2026-06-25  
**Entorno:** Docker Desktop 29.4.0 sobre Windows 11 / WSL2

---

## 1. Creacion de redes personalizadas

Se crearon dos redes Docker independientes para simular el aislamiento logico:

```bash
$ docker network create app_net
4d7060f7ed65573f27c0622484825d45437bb2f5df00bc72ac856bd8b73af5ad

$ docker network create db_net
a08bef8ce513e8790788dad5f1afdadcf0f1ce1adc6741c286e9a60a8d5b3f0c
```

## 2. Levantamiento de contenedores en redes separadas

Se levantaron dos contenedores Alpine asignados a redes distintas:

```bash
$ docker run -dit --name app_server --network app_net alpine sh
d3cba4cbdcd4f575d87d6760e43affc8f1a32a05d042c67024d2a1faedeeb149

$ docker run -dit --name db_server --network db_net alpine sh
797fc9edccdd393e98e41158f64aa55a37fba393200b4f728d940b8b82721e4a
```

## 3. Prueba de aislamiento de red

Se intento hacer ping desde `app_server` (en `app_net`) hacia `db_server` (en `db_net`):

```bash
$ docker exec app_server ping -c 2 172.21.0.2
ping: bad address '172.21.0.2'
```

**Resultado esperado:** El ping falla porque los contenedores estan en redes completamente aisladas. Esto demuestra el principio de **minimo privilegio en red** y la segmentacion de microservicios.

## 4. Limpieza

```bash
$ docker rm -f app_server db_server
$ docker network rm app_net db_net
```

## Resultado

Prueba completada con exito. Se demostro el aislamiento de red entre contenedores Docker en redes distintas, una practica fundamental de seguridad en entornos DevSecOps.
