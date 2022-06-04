# script para ejecutar la carpeta en rocketbot
# $ rocketrun <folder> --beta
#  crear una nueva subcarpeta
#  copiar en esa carpeta el bot de rocketbot
#  copiar los archivos __init__.py y package.json en /carpeta/modules/<nombre de la carpeta>/
#  correr rocketbot?

#  crear una nueva subcarpeta
New-Item -Path . -Name "newfolder" -ItemType "directory"
#  copiar en esa carpeta el bot de rocketbot
#  copiar los archivos __init__.py y package.json en /carpeta/modules/<nombre de la carpeta>/
#  correr rocketbot?

# Para copiar más de un archivo necesitas
# -Path <archivos separados por coma> 
# ex: -Path ./file1,./folder1
# -Destination <dest>
# -Recurse si queres copiar todos los archivos 
# -Force si tenés que reemplazar archivos
Copy-Item -PATH .\.github\ -Destination C:\Users\aucac\Code\exp-flutter\ -Recurse -Force

