# pruebas-practicas-bash
pruebas y practicas de bash 


# No olvidarse de correr el comando "chmod +x filename" nunca.


# sha-bang(#!)
Indicadores de que lo que va a correrse es un script de shell; el #! en realidad es un magic number que indica el file type 
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
