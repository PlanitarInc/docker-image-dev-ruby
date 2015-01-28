FROM planitar/dev-base

USER root
WORKDIR /

RUN apt-get install -y ruby ruby-dev && apt-get clean
