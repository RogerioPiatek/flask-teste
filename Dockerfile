# Usar a imagem oficial do Python
FROM python:3.9-slim

# Copiar o arquivo requirements.txt para dentro do container
COPY requirements.txt .

# Instalar as dependências do Python
RUN pip install --no-cache-dir -r requirements.txt

# Copiar todo o código do projeto para o container
COPY . .

# Expor a porta que o Flask usará
EXPOSE 5000

# Definir a variável de ambiente para o Flask (assumindo que o arquivo principal seja app.py)
ENV FLASK_APP=app.py

# Rodar o servidor Flask
CMD ["flask", "run", "--host=0.0.0.0", "--port=5000"]
