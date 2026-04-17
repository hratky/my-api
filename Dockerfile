# Základní image
FROM python:3.11-slim

# Pracovní adresář
WORKDIR /app

RUN pip install fastapi uvicorn

# Kopírování zbytku kódu
COPY . .

# Port aplikace
EXPOSE 8000

# Spuštění
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"] 