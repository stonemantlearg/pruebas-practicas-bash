# pruebas-practicas-bash
pruebas y practicas de bash 


# No olvidarse de correr el comando "chmod +x filename" nunca.


# sha-bang(#!)
Indicadores de que lo que va a correrse es un script de shell; el #! en realidad es un magic number que indica el file type <br>
(Más info = https://en.wikipedia.org/wiki/Magic_number_(programming) )

#!/bin/sh  <br>
#!/bin/bash <br>
#!/usr/bin/perl <br>
#!/usr/bin/tcl <br>
#!/bin/sed -f <br>
#!/bin/awk -f <br>

Al utilizar indicadores como los previamente mencionados se vuelve un script portable a sistemas que no son Linux; aunque se sacrifican algunas utilidades de Bash. <br>
Si el path dado al script no es correcto, imprimirá un mensaje de "Command not found." <br>

Si hay algo en la primera linea, el sha-bang pasará a ser considerado un comentario. 


# Caracteres Especiales

Los comentarios pueden aparecer en cualquier parte del script pero el # que inicia los comentarios puede estar en diferentes lugares que lo harían no formar parte del comentario. Por ejemplo: <br>

echo "the # here does not begin a comment" <br>
echo 'the # here does not begin a comment' <br>
echo the /# here does not begin a comment <br>
echo the # here begins a comment <br>

echo ${PATH#*:} # Está substituyendo un parámetro, no haciendo un comentario. <br>
echo $(( 2#101011 ))  # Conversión, no hace comentario. <br>

"" '' \ se consideran "quoting and escape", por lo cual no pueden tener un comentario dentro. <br>
<ol>
<li> "" -> También preserva la mayoría de los caracteres de ser interpretados.</li>
<li> '' -> Conserva TODOS los caracteres de ser interpretados.</li>
<li> , -> separa operaciones aritméticas y puede concatenar strings.</li>
<li> ... -> "Operación no hacer nada" </li>
<li> * -> wildcard o multiplicación aritmética </li>
<li> ? -> Operador de testeo (EJ: condición? result-if-true:result-if-false) </li>
</ol>
