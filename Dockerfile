from python:3.9
RUN mkdir  /app
WORKDIR /app
# We copy just the requirements.txt first to leverage Docker cache
add ./requirements.txt  /app/



RUN pip install -r app/requirements.txt

COPY . /app

ENTRYPOINT [ "python" ]

CMD [ "app.py" ]