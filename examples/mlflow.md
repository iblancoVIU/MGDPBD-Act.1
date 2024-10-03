# Guía de uso: mlflow

En este documento se presenta una guía de uso de la librería **mlfow** para realizar gestión de versiones de experimentación y modelos de aprendizaje automático.

>[!NOTE]
> En la [documentación oficial(https://mlflow.org/docs/latest/quickstart.html)] de la herramienta se encuentra una guía extendida de estos pasos.

Esquema de pasos a seguir:

1. Instalar mlflow (en nuestro caso ya está instalado en el entorno de conda o pip).
2. Una vez que se desee registrar la experimentación, por ejemplo a través de una libreta de Jupyter, se deberá importar la librería junto con las que se dese utilizar.

    ~~~ python
    import mlflow
    ~~~

3. En la libreta de ejemplo se disponen de dos métodos para realizar el registro de la experimentación.

4. Para poder visualizar los resultados en una interfaz vía web se puede ejecutar el comando:

    ~~~ bash
    mlflow ui
    ~~~
