# Usar a imagem oficial do Python
FROM python:3.9-slim

# Criar e definir o diretório de trabalho no container
WORKDIR /app

# Copiar o arquivo requirements.txt para dentro do container
COPY requirements.txt .

# Instalar as dependências do Python
RUN pip install --no-cache-dir -r requirements.txt

# Copiar o restante do código para dentro do container
COPY . .

# Expor a porta que o Flask usará
EXPOSE 5000

# Definir a variável de ambiente para o Flask (opcional, mas recomendada)
ENV FLASK_APP=app.py

# Rodar o servidor Flask
CMD ["flask", "run", "--host=0.0.0.0", "--port=5000"]
