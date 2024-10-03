# Guía de uso: git

En este documento se presenta una guía para el uso de git en un proyecto. No se exploran en profundidad algunos aspectos más complejos de la herramienta, sin embargo, con este contenido debería ser suficiente para una primera aproximación a la misma.

> [!IMPORTANT]
> Las tareas listadas consideran que se posee un repositorio ya generado en la nube (GitHub en este caso) previamente.

Flujo de inicio y trabajo básico con el repositorio:

> [!WARNING]
> A partir de este punto se presentan comandos para ser utilizados en la terminal/consola del equipo del usuario. Si bien existen herramientas visuales que serán empleadas con normalidad, se presenta la forma más básica de ejecución de las tareas previstas.

1. Instalar git. Esta operación se tiene que hacer a nivel del ordenador, se puede descargar el instalador o seguir los pasos indicados en la página oficial de la herramienta. [Web](https://git-scm.com/).
2. En _nuestro caso_ dado que se va a iniciar desde un repositorio ya geenrado en la cuenta del usuario se tiene que usar el comando para **clonar** este repositorio desde la web a nuestra instancia local. Este comando se debe ejecutar dentro de la ubicación en la que se desee descargar el contenido del mismo:

    ~~~ bash
    git clone <url-del-repositorio>
    ~~~

3. A partir de ahí, se puede comenzar desde el editor de código (vscode por ejemplo):
   1. Usar la opción "Abrir directorio" (o carpeta) seleccionando la ubicación donde se realizó la descarga.
   2. Crear o editar cualquier archivo (puede ser el README.md de la raíz por ejemplo).
   3. Previsualizar el estado del repositorio. Ejecutando el siguiente comando:

        ~~~ bash
        git status
        ~~~

   4. Agregar estos cambios al área de _stage_ del repositorio.

        ~~~ bash
        git add .
        ~~~

   5. Volver a revisar el estado del repositorio (nuevamente usar el comando _status_).
   6. Una vez que se tengan los cambios generados, se podrá realizar una confirmación de los mismos. Para ello se tiene que utilizar el comando **commit**, es conveniente agregar un mensaje con la opción “_-m_” para que se aclare qué cambios se confirman.

        ~~~ bash
        git commit -m "Modificación de README principal."
        ~~~

   7. Posteriormente, al realizar un segundo cambio (modificación de un archivo ya existente), se podrá utilizar una versión resumida de los pasos anteriores, pero es sólo aplicable cuando **no se generan nuevos archivos**. En tal caso, al utilizar la opción "_-am_" en el comando de commit se estarán pasando al área de _stage_ los cambios realizados en la misma acción de confirmación.

        ~~~ bash
        git commit -am "Modificación de archivos de documentación varios."
        ~~~

   8. Al querer sincronizar los cambios locales con la instancia remota del repositorio (en la nube). Se deberá utilizar el comando **push**. Dado que en este caso se ha trabajado directamente desde un repositorio clonado no será necesario especificar el detalle del enlace remoto a utilizar.

        ~~~ bash
        git push
        ~~~
