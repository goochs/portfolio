###############################################
# Base Image
###############################################
FROM python:3.11.3-alpine3.17

WORKDIR /app

COPY requirements.txt /app

RUN pip install -r requirements.txt

COPY . /app

EXPOSE 5000

ENTRYPOINT [ "python3" ]
CMD [ "flask_server/app.py" ]