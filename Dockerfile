FROM python:3.9.5-slim
COPY ./requirements.txt app/requirements.txt
RUN pip install -r app/requirements.txt
COPY ./ app/
RUN chmod 777 app/data
ENTRYPOINT python app/bazos.py