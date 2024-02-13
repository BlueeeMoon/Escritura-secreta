# Escritura-secreta
En cuanto la gente que tenía secretos descubrió que sus secretos no estaban tan bien guardados como debían, se pusieron a investigar (en secreto, claro está) los posibles modos de guardar esos secretos mejor. 

## Criptografía. 

Repositorio con información acerca de la historia de la criptografía, ejemplos enfocado al entendimiento de Bitcoin. 

---
## Contenido.

- [Introducción](#introducción).
- [Sistemas antiguos de cifrado](sistemas_antiguos_de_cifrado.md).
- [Esteganografía](esteganografia.md).
- Criptoanálisis.
- Cifrado Cesar.
- Criptografía en la literatura.
- Cifrados polialfabéticos.
- Claves secretas.
- La máquina Enigma.
- Método Kasiki.
- Firma digital.
- Protocolos criptográficos.
- Seguridad criptográfica. 
- Criptografía con curvas elípticas.

---

## Introducción 

### ¿Qué es la criptografía?

El término criptografía proviene del griego __*kryptos*__, escondido, y __*graphos*__, escritura. Lo que se traduce en la Real Acedemia Española como: __*Arte de escribir con clave secreta o de un modo enigmático*__.

Desde la antigüedad todas las civilizaciones han desarrollado sistemas criptográficos para el aseguramiento de sus comunicaciones. Los jeroglíficos crípticos utilizados en Egipto por ejemplo marcan el inicio de este apasionante y enigmático mundo. 

Así que la criptografía existe desde hace miles de años, ha decidido guerras y es utilizada en la red de comunicación mundial hoy en día.
Para comprender mejor como funciona y no confundirnos con términos como: Criptoanálisis, Criptología o Esteganografía nos basaremos en una pequeña analogía, más adelante veremos esos términos de forma independiente. 

Imaginemos que Alicia :woman_technologist: y Bob :man_technologist:, nuestros personajes favoritos en Bitcoin tienen que separarse por un tiempo, previo a esto tuvieron que estar juntos. 
Alicia y Bob comparten un secreto :see_no_evil:, así que tienen que comunicarse y compartir información de manera privada. Solo que existe una persona llamada Eve :woman: que sabe que ellos tienen un secreto y quiere obtener esa información, Eve tiene las habilidades necesarias para obtenerla. 

Alicia y Bob deciden enviarse mensajes en algún tipo de código secreto. Alicia encierra un mensaje para Bob en una caja :package: usando un candado :closed_lock_with_key:. La combinación de ese candado está en manos de Bob :key:. __*A esto se le conoce como cifrado.*__

Cuando Bob recibe la caja :package:, abre el candado :unlock: con la combinación que previamente compartieron. __*A esto se le llama descifrado.*__

La criptografía comienza cuando abandonamos los candados físicos y usamos sistemas de cifrado.

Piensa que los sistemas de cifrado son candados digitales donde Alicia y Bob pueden codificar y luego decodificar sus mensajes para que parezca que no tienen sentido en caso de que Eve los intercepte. 

¡Comencemos esta hermosa aventura! :smiley:
