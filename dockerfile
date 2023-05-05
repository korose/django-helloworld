# Dockerfile

FROM python:3.9-buster

# copy source and install dependencies
RUN mkdir -p /opt/app
ADD . /opt/app
WORKDIR /opt/app
RUN pip install -r requirements.txt
RUN ls -lah

# start server
EXPOSE 8000
STOPSIGNAL SIGTERM
CMD ["python3", "./manage.py", "runserver"]