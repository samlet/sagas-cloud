FROM samlet/sagas_base:0.1

RUN apt-get update -qq \
 && apt-get install -y --no-install-recommends \
    tree

RUN pip install fire waitress simplejson clipboard graphviz
RUN pip install honcho iso-639 kroman cyrtranslit

RUN mkdir -p /pi/
# add sources package content to target folder
ADD sagas-stack-0.1.tar.gz /pi/

WORKDIR /pi/stack

