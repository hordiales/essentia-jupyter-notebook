FROM mtgupf/ac-audio-extractor:v2

# Asegurar pip actualizado
RUN python3 -m pip install --upgrade pip

# Instalar Jupyter
RUN pip install notebook matplotlib==2.1.0

# Crear directorio de trabajo
WORKDIR /workspace

# Exponer el puerto del notebook (usamos 8080)
EXPOSE 8080

# Comando para lanzar Jupyter Notebook
# Sobrescribimos el comando default del contenedor original
ENTRYPOINT []
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8080", "--allow-root", "--no-browser", "--NotebookApp.token=''", "--NotebookApp.password=''"]
