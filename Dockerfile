    # Základní image
FROM python:3.11-slim

# Pracovní adresář
WORKDIR /app

# Kopírování requirements a instalace
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Kopírování zbytku kódu
COPY . .

# Port aplikace
EXPOSE 8000

# Spuštění
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
