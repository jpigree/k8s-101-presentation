FROM python:3-alpine

WORKDIR /usr/src/app

COPY requirements.txt app.py ./
RUN pip install --no-cache-dir -r requirements.txt

ARG version
ENV VERSION ${version:-v1}

EXPOSE 5000

CMD python ./app.py
