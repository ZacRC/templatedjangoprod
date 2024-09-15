FROM python:3.9

ENV PYTHONUNBUFFERED 1

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

COPY .env .

RUN python manage.py collectstatic --noinput



CMD ["gunicorn", "VidTalk.wsgi:application", "--bind", "0.0.0.0:8000"]
