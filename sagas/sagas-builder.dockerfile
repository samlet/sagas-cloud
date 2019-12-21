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
    pkg-config \
    git-core \
    openssl \
    libssl-dev \
    libffi6 \
    libffi-dev \
    libpng-dev \
    python-numpy

RUN pip install fire simplejson sanic pandas

