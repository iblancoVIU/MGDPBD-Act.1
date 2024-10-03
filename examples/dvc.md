# Guía de uso: dvc

En este documento se presenta una guía de uso de la librería **dvc** para realizar gestión de versiones de archivos de datos.

>[!NOTE]
> En la [documentación oficial(https://dvc.org/doc/start/data-management/data-versioning)] de la herramienta se encuentra una guía similar a esta.

Esquema de pasos a seguir:

1. Instalar dvc (en nuestro caso ya está instalado en el entorno de conda o pip). [Documentación](https://dvc.org/doc/install).
2. Inicializar el repositorio a fin de gestionar las versiones de los archivos de datos:

    >[!NOTE]
    >En caso de obtener un error como el siguiente: "ERROR: unexpected error - module 'platformdirs' has no attribute 'site_cache_dir'"
    >Se deberá verificar la instalación de la siguiente versión de la librería paltformdirs:
    >python -m pip install "platformdirs>=3.1.1"

    ~~~ bash
    dvc init
    ~~~

3. A paritr de ahí se puede agregar uno o más archivos para que dvc haga el seguimiento de los mismos mediante:

    ~~~ bash
    dvc add [nombre_archivo]
    ~~~

4. Para que estos cambios sean almacenados en el repositorio git del proyecto, se deberán ejecutar los comandos:

    ~~~ bash
    git add [nombre_archivo].dvc [ubicacion].gitignore
    git commit -m "Se agregan los datos X."
    ~~~

5. Esos archivos podrían sincronizarse contra una ubicación remota, para eso se debe realizar la configuración vía:

    ~~~ bash
    dvc remote add -d storage [medio]
    ~~~

    Con el parámetro `-d` se hace referencia a que esa será la ubicación remota por defecto. Y en el artributo `medio` se podrán definir opciones remotas (por ejemplo en Google Drive) o un directorio local (dentro o fuera del repositorio git). [Más información](https://dvc.org/doc/command-reference/remote/add).

    >[!NOTE]
    >En caso de utilizar un directorio dentro del repositorio, el mismo deberá ser agregado al archivo .gitignore.

6. Una vez configurado el enlace al almacenamiento remoto se podrá realizar la sincronización mediante el comando:

    ~~~ bash
    dvc push
    ~~~

7. Finalmente, una forma de realizar una recuperación de una versión en particular de un archivo ante un cambio no deseado podría ser:

    ~~~ bash
    git checkout [version][nombre_archivo]
    dvc checkout
    ~~~

>[!WARNING]
> dvc opera en forma conjunta con git a través de los archivos .dvc que tienen nombres idénticos a los archivos de datos, los cambios que se desee deshacer deberán ser recuperados también desde el repositorio que gestiona git.

La opción [version] suele ser "HEAD~1" para indicar la versión inmediatamente anterior del archivo que haya sido confirmada en el repositorio.

Con eso se tendrá un versionado básico de los archivos de datos del proyecto.
