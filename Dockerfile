  
# Dockerfile
FROM python:stretch

COPY . /app
WORKDIR /app


Run pip install --upgrade pip
RUN pip install -r requirements.txt


ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"] 