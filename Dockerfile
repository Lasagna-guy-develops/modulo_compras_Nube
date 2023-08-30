FROM python:3.8.3-slim
COPY . /app
WORKDIR /app
RUN apt-get update \
    && apt-get -y install libpq-dev gcc \
    && pip install psycopg2
RUN pip install -r requirements.txt
EXPOSE 5000 
ENTRYPOINT [ "python" ] 
CMD [ "app.py" ]
