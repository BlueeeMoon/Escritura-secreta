## Criptoanálisis.

El criptoanálisis (del griego __*kryptós*_, **escondido** y _*analýein*_, **desatar**) es la disciplina que evalúa la seguridad de los mecanismos criptográficos :computer:, es decir; mientras la criptografía :closed_lock_with_key: se encargada de desarrollar mecanismos para proveer diferentes atributos de seguridad a la información, el criptoanálisis se encarga de su estudio con el fin de encontrar debilidades en dichos sistemas y romper su seguridad sin el conocimiento de información secreta.:lock:

El criptoanálisis se encarga de romper códigos y cifrados, su objetivo de descifrar mensajes cifrados :unlock: , probar la seguridad de los sistemas criptográficos e intentar vulnerar la seguridad de los sistemas existentes. 

Esta disciplina es fundamental en el campo de la seguridad de la información y la criptografía y a medida que la criptografía avanza, también lo hace el criptoanálisis, y ambos campos se desarrollan en un constante juego del gato y el ratón.

### Tipos de criptoanálisis.

- Solo texto cifrado **COA** [ciphertext-only](https://en.wikipedia.org/wiki/Ciphertext): en este tipo de criptoanálisis el atacante tiene acceso únicamente al texto cifrado, sin embargo no tiene acceso al texto plano original ni a ninguna otra información adicional sobre el sistema de cifrado utilizado.

- Texto claro conocido **KPA** [known-plaintext](https://en.wikipedia.org/wiki/Known-plaintext_attack): en este tipo de criptoanálisis el atacante tiene acceso tanto al texto cifrado como al texto plano original correspondiente. El atacante tiene conocimiento sobre cómo ciertos segmentos de texto plano se han cifrado utilizando un algoritmo criptográfico específico.

- Texto claro elegido **CPA** [chosen-plaintext](https://en.wikipedia.org/wiki/Chosen-plaintext_attack): el atacante tiene la capacidad de elegir y cifrar ciertos textos planos de su elección, y luego observar los correspondientes textos cifrados. El atacante puede enviar texto plano arbitrario al sistema de cifrado y observar cómo se cifra, con el objetivo de deducir información sobre el algoritmo de cifrado o la clave utilizada. El objetivo del ataque es obtener información que reduzca la seguridad del esquema de cifrado.

- Texto cifrado elegido **CCA** [chosen-ciphertext](https://en.wikipedia.org/wiki/Chosen-ciphertext_attack): el atacante tiene la capacidad de elegir y obtener la decodificación de ciertos textos cifrados de su elección, y luego observar los correspondientes textos planos. En este escenario, el atacante puede enviar texto cifrado arbitrario al sistema de descifrado y observar cómo se descifra, con el objetivo de deducir información sobre el algoritmo de descifrado o la clave utilizada.

### Objetivo del criptoanálisis. :dart:

- Mejorar la seguridad de los sistemas de información.
- Desarrollar técnicas de ataque.
- Desarrollar y mejorar algoritmos de cifrado.
- Evaluar la seguridad de los sistemas criptográficos.

:zap: ¡Listo, diviértete aprendiendo! :smiley:
