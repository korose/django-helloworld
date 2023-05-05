# Dockerfile

FROM python:3.9-buster

# copy source and install dependencies
RUN mkdir -p /opt/app
COPY . /opt/app
WORKDIR /opt/app
RUN pip install -r requirements.txt

# start server
EXPOSE 8000
STOPSIGNAL SIGTERM
CMD ["python manage.py runserver"]