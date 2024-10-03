@echo off
@echo "Se crea el archivo de dependencias a instalar."
echo jupyter >> config/requirements.txt
echo pandas >> config/requirements.txt
echo numpy >> config/requirements.txt
echo scikit-learn >> config/requirements.txt
echo dtale >> config/requirements.txt
echo mlflow >> config/requirements.txt
echo dvc >> config/requirements.txt
echo ydata_profiling >> config/requirements.txt
echo streamlit >> config/requirements.txt
@echo "Archivo generado en el directorio config."
