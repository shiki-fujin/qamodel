FROM ubuntu:18.04

# Install wget
RUN apt-get update &&\
    apt-get ca-certificates &&\
    apt-get install -y --no-install-recommends wget &&\
    rm -rf /var/lib/apt/lists/*

# adds the script defining the QA model to docker
COPY download_model.sh .

# Downloads the required QA model
RUN bash download_model.sh
    
FROM python:3.8.12-slim-buster

# Install required pip libraries
RUN pip install --no-cache-dir transformers[torch] uvicorn fastapi

# copies the app files to the docker image
COPY app/ app/

# runs our application at the start of the docker image
CMD ["python", "app/main.py"]
