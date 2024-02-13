## Esteganografía.

Una de las formas de comunicación más secretas y antiguas consistía en que el mensaje pase inadvertido para todo el mundo, excepto para el destinatario. Algunos investigadores llaman a esto:

> ***El arte de pasar inadvertido***. 

Así que si nadie sabe que se está enviando un mensaje, éste no podrá ser descubierto. A esta técnica se le conoce como esteganografía, del griego __*στεγανος*__ steganos, **cubierto** u **oculto**, y __*γραφος*__ graphos, **escritura** :scroll:.

La clave del éxito de esta técnica es no levantar sospechas, para que el mensaje no sea interceptado, por ejemplo: poner una nota de amor entre las hojas de un libro :books:.

Entre los primeros documentos que describen esta técnica se remontan a Heródoto quien vivió en Grecia en el siglo v a.C. donde Heródoto narra cómo [Demarato](https://es.wikipedia.org/wiki/Demarato), antiguo rey de Esparta aviso a los espartanos sobre los planes de [Jerjes](https://es.wikipedia.org/wiki/Jerjes_I), Rey persa, que estaba rearmando a su ejército con la intención de invadir Grecia.

En esa época no existía el papel :newspaper:, así que los textos se escribían en tablones de madera cubiertos de cera :candle:. Demarato escribió sobre la madera, cubriéndola después con cera. 

Entre otras historias narradas por [Heródoto](https://es.wikipedia.org/wiki/Her%C3%B3doto) está la de [Histieo](https://es.wikipedia.org/wiki/Histieo), quien tramaba una rebelión contra el rey de Persia. Heródoto eligió a su esclavo más leal y le afeito la cabeza para escribirle un mensaje en ella. Cuando el cabello creció el viajero se dirigió con el yerno de Histieo, [Aristágoras](https://es.wikipedia.org/wiki/Arist%C3%A1goras) para solicitar su ayuda. Esto no era del todo idóneo para situaciones que tenían cierta urgencia.

Otro ejemplo de esteganografía se daba en la China antigua donde se escribían mensajes sobre seda fina que posteriormente era aplastada formando una pelota para después ser cubierta con cera. 

[Giovanni della Porta](https://es.wikipedia.org/wiki/Giovanni_Battista_della_Porta) explicó en su obra Magia naturalis como hacer llegar mensajes a los prisioneros de la inquisición. Los mensajes eran escondidos en huevos duros :egg:, se preparaba un mezcla de alumbre y vinagre, y con ella se escribida en mensaje en la cáscara. La solución penetraba por los pequeños agujeros y al pelar el huevo se podía leer el mensaje. 

Los antiguos griegos por su parte usaban tinta invisible que extraían de la naturaleza. En el siglo I a.C., Plinio el Viejo sabía que la planta Tithymallus podía usarse como tinta invisible. 

[John Edgar Hoover](https://es.wikipedia.org/wiki/John_Edgar_Hoover) nombrado como director del FBI 1924 usaba la tecnología **micro punto** que el mismo llamo: 


> ***La obra maestra del espionaje enemigo***.

Esta tecnología consistía en reducir fotográficamente una página de texto a menos de un milímetro de diámetro, posteriormente se escaneaba para obtener el mensaje. El mensaje podía ir en un puto y coma o en un punto lo la letra i por ejemplo. 

Actualmente la esteganografía se usa de muchas maneras gracias a los avances tecnológicos, las más comunes son:

- Esteganografía de texto. :page_facing_up:
- Esteganografía de imagen. :camera_flash:
- Esteganografía de video. :film_strip:
- Esteganografía de audio. :studio_microphone:
- Esteganografía de red. :computer:

Por ejemplo para proteger los derechos de autor, se utiliza la marca de agua digital. Esta marca consiste en insertar un mensaje oculto con información sobre el autor o propietario intelectual (copyright) :cd: . De esta manera se puede detectar el uso ilícito de alguien que no autorizado. 

Aquí tienes un ejemplo de cómo usar la esteganografía en bash para que puedes ocultar un mensaje en una imagen :computer:. 

:ballot_box_with_check: Instalaremos [steghide](https://steghide.sourceforge.net/) que es un programa de esteganografía que puede ocultar datos en varios tipos de archivos de imagen y audio.

~~~
sudo apt install steghide –y
~~~
:ballot_box_with_check: Verifica su ubicación para verificar que fue instalado de forma correcta.
~~~
which steghide
~~~
:ballot_box_with_check: Puedes crear un directorio de trabajo.
~~~
mkdir criptografia && cd criptografia
~~~
:ballot_box_with_check: Ahora escribe tu mensaje secreto.
~~~
echo "Alicia este es un mensaje súper secreto" > ./super_secreto_alicia.txt
~~~
:ballot_box_with_check: Muestra el mensaje.
~~~
cat super_secreto_alicia.txt
~~~
:ballot_box_with_check: Incrusta los datos con la siguiente instrucción.
~~~
steghide embed -cf flores_imagen.jpeg -ef super_secreto_alicia.txt
~~~

:information_source: Te pedirá una frase de contraseña, me parece que es necesario ponerlo, así nadie podrá descifrarlo. 

- Extraer el secreto.

:information_source: Durante la prueba, asegúrese de no intentar extraer el archivo de texto en el mismo directorio o se le pedirá que sobrescriba el archivo.

~~~
steghide extract -sf flores_imagen.jpeg
~~~

![Esteganografía](/estenografia.jpeg)

:zap: ¡Listo, diviértete jugando! :smiley:
