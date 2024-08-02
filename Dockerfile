FROM python:3.9

WORKDIR /app

COPY requirements.txt /app/
RUN pip3 install -r needs.txt
COPY . /app

CMD gunicorn app:app & python3 main.py
