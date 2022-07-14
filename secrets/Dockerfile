FROM python:3.8-slim

COPY requirements.txt /requirements.txt
COPY main.py /main.py

RUN pip install -r requirements.txt

ENTREPOINT ["python", "/main.py"]