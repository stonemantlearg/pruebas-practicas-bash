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
<li> ? -> Operador de testeo (EJ: condición? result-if-true:result-if-false) o wild card de un solo caracter</li>
<li> $ -> Sustitución de variables o final de linea en una expresión regular </li>
<li> ${} -> Sustitución de parámetros </li>
<li> () -> Grupo de comandos o inicio de un array, doble es expansión de integral </li>
<li> {} -> bloque de código, expansión de braces o extensión de brace expansion (EJ: {a..z} contiene todos los carácteres de A a Z) </li>
<li> [] -> Test, elementos de un array, o rango de caracteres </li>
<li> $[ ... ] -> Expansión de integral (EJ: A=3, B=7 / $[$A+$B] resulta en 10) </li>
<li> >, &>, >&, <<, >>, <, <> -> redirección </li>
<li> <,> -> Comparadores de strings, integrers, etc. </li>
<li> \< , \>  -> limitación de palabras en expresiones regulares </li>
<li> | -> pipe, pasa el resultado (stdout) de un comando dentro del input (stdin) de otro o a la shell. Se usa para vincular comanados. </li>
<li> >| -> Redirección forzada </li>
<li> & -> Los comandos seguidos por un & van a continuar ejecutandose pasivamente. </li>
<li> && -> Operador lógico AND </li>
<li> || -> operador lógico OR </li>
</ol>

# Variables

En caso de dejar una variable vacía esta siempre tomará el valor  de "null"; incluso si es usada en un lugar en específico o para una función.

Ejemplo:

[Code] echo ${var=abc} # Resulta en abc
echo ${var=xyz} #Resulta en abc, ya que fue declarada previamente. [/code]