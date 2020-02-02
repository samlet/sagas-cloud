FROM samlet/sagas_wordnet:0.1

RUN pip install Flask cachetools PyYAML

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
## == end ==

EXPOSE 8093
CMD python -m sagas.nlu.words_servant

