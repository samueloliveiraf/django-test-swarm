FROM python:3.9

WORKDIR /app

ADD . /app

RUN pip install --no-cache-dir -r requirements.txt

CMD ["gunicorn", "app_web.wsgi:application", "--bind", "0.0.0.0:8000"]
