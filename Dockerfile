FROM python:3.8-slim-buster

WORKDIR /app

COPY py/requirements.txt /app

RUN pip install --no-cache-dir -r requirements.txt

COPY py /app

EXPOSE 5000

CMD ["python", "app.py"]