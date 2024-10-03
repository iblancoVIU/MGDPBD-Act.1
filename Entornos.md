# 13MIBD Metodologías de Gestión de Proyectos de Big Data

## WINDOWS >> Pasos a seguir para generar el entorno de trabajo

Una vez clonado en forma local el repositorio template de la asignatura, se podrá optar por alguna de estas tres opciones para generar el entorno de librerías a utilizar:

1. En sistemas Windows utilizar el archivo crear_archivo_requerimientos.bat. Y posteriormente utilizar las operaciones integradas que ofrece el IDE, Visual Studio Code en este caso, para manejar entornos virtuales de Python.

2. Utilizar conda o miniconda para reproducir el entorno en base a los archivos incluidos en el repositorio. Por ejemplo:
    ~~~ bash
    conda env create --name OCT2324 --file config/conda-windows.yaml
    conda activate OCT2324    
    ~~~

## LINUX/UNIX >> Pasos a seguir para generar el entorno de trabajo

Una vez clonado en forma local el repositorio template de la asignatura, se podrá optar por alguna de estas tres opciones para generar el entorno de librerías a utilizar:

1. En sistemas Linux/Unix utilizar el archivo Makefile y sus comandos como asistente. Y posteriormente realizar la instalación vía un comando de pip. Por ejemplo:
    ~~~ bash
    make [comando]
    ...
    python -m pip install -r config/requirements.txt
    ~~~

2. Utilizar las operaciones integradas que ofrece el IDE, Visual Studio Code en este caso, para manejar entornos virtuales de Python.

3. Utilizar conda o miniconda para reproducir el entorno en base a los archivos incluidos en el repositorio. Por ejemplo:
    ~~~ bash
    conda env create --name OCT2324 --file config/conda-linux.yaml
    conda activate OCT2324    
    ~~~

