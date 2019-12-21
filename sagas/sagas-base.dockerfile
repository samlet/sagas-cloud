FROM python:3.6

# Install common libraries
RUN apt-get update -qq \
 && apt-get install -y --no-install-recommends \
    # required by psycopg2 at build and runtime
    libpq-dev \
     # required for health check
    curl \
 && apt-get autoremove -y

# Install all required build libraries
RUN apt-get update -qq \
 && apt-get install -y --no-install-recommends \
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

# Make sure we have the latest pip version
RUN pip install -U pip

RUN pip install pandas spacy rasa nltk stanfordnlp

# WORKDIR /pi/stack



