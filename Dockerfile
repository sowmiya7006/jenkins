FROM python:3.13.12
WORKDIR /app
COPY . .
RUN ["python","main.py"]
