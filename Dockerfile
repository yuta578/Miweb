# Imagen base oficial de Python ligera
FROM python:3.10-slim

# Evitar generación de archivos .pyc y habilitar salida directa de logs
ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

# Directorio de trabajo dentro del contenedor
WORKDIR /app

# Instalar dependencias
COPY src/requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Copiar el código fuente
COPY src/ ./src/

# Comando por defecto para ejecutar la aplicación/pruebas
CMD ["python", "src/test.py"]
