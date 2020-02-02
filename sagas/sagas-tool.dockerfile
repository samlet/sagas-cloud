FROM python:3.6-slim

# Install common libraries
RUN apt-get update -qq \
 && apt-get install -y --no-install-recommends \
    # required by psycopg2 at build and runtime
    libpq-dev \
     # required for health check
    curl \
    build-essential \
    wget \
    openssh-client \
    graphviz-dev \
    pkg-config \
    git-core \
    openssl \
    libssl-dev \
    libffi6 \
    libffi-dev \
    libpng-dev

RUN apt-get install -y --no-install-recommends \
    python-numpy \
    libicu-dev

# better to add --no-cache-dir: RUN pip install --no-cache-dir jupyter
RUN pip install fire simplejson graphviz py4j \
    pyicu morfessor pycld2 polyglot \
    PyExecJS bs4 sanic pandas streamlit

RUN pip install kroman cyrtranslit iso-639 jupyter

## == sources ==
RUN mkdir -p /pi/
# add sources package content to target folder
ADD sagas-stack-0.1.tar.gz /pi/

RUN mkdir -p /pi/ws/
ADD sagas-saai-0.1.tar.gz /pi/ws/

ENV PATH="/pi/stack:/pi/ws/sagas-ai:$PATH"
ENV PYTHONPATH="/pi/stack:/pi/ws/sagas-ai:$PYTHONPATH"
ENV runtime="docker"

WORKDIR /pi/stack



