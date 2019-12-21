FROM samlet/sagas_base:0.1

RUN apt-get update -qq \
 && apt-get install -y --no-install-recommends \
    tree libicu-dev

RUN pip install fire waitress simplejson clipboard \
    graphviz honcho iso-639 kroman cyrtranslit

RUN mkdir -p /pi/ai/corenlp
# add data-* folder content to target folder
ADD data-corenlp /pi/ai/corenlp/

