# FROM samlet/sagas_base:0.1
FROM samlet/sagas_builder:0.1

RUN pip install nltk fire waitress simplejson iso-639 kroman cyrtranslit

# RUN apt-get update -qq \
#  && apt-get install -y --no-install-recommends \
#     tree

RUN mkdir -p /pi/ai/nltk/data
# add data-nltk folder content to target folder
ADD data-nltk-ext /pi/ai/nltk/data/
ADD data-nltk /usr/local/nltk_data/

# RUN mkdir -p /pi/
# add sources package content to target folder
# ADD sagas-stack-0.1.tar.gz /pi/

# WORKDIR /pi/stack

