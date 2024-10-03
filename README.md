# 13MIBD Template

Plantilla de repositorio para la asignatura 13MBID.  

**"Metodologías de Gestión de Proyectos de Big Data"**  
*Master Universitario en Big Data y Ciencia de Datos  
Universidad Internacional de Valencia*  

Prof: Dr. Horacio Kuna
Dictado: ABR24-25

## Descripción del contenido

Carpetas:

* config: contiene los archivos de configuración del [entorno](Entornos.md) a replicar vía miniconda/conda o pip.
* data: directorio para almacenar los datos del proyecto, tiene una subdivisión según la instancia de cada archivo:
  * raw: contiene datos en su estado original tal como fueran recibidos para el proyecto.
  * processed: contiene archivos que pudieran haber sido modificados como parte de las tareas de preprocesamiento. Sin embargo, se trata de instancias intermedias y no utilizables para entrenamiento de modelos.
  * final: versiones finales de los archivos que pueden ser utilizadas tanto para el entrenamiento de modelos como para la elbaboración de visualizaciones.
* notebooks: espacio para almacenar las libretas de experimentación del proyecto.
* docs: directorio para almacenar los reportes generados a partir del trabajo y otra información de interés.
* examples: ubicación que contiene ejemplos para el uso de este template.
