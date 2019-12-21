FROM python:3.6-slim

# Install common libraries
RUN apt-get update -qq \
 && apt-get install -y --no-install-recommends \
    tree wget curl \
 && apt-get autoremove -y

# RUN pip install fire waitress simplejson sanic

## == sources ==
RUN mkdir -p /pi/
# add sources package content to target folder
ADD sagas-stack-0.1.tar.gz /pi/

RUN mkdir -p /pi/ws/
ADD sagas-saai-0.1.tar.gz /pi/ws/

ENV PATH="/pi/stack:/pi/ws/sagas-ai:$PATH"
ENV PYTHONPATH="/pi/stack:/pi/ws/sagas-ai:$PYTHONPATH"

WORKDIR /pi/stack

