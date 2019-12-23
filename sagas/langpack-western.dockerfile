FROM samlet/sagas_builder:0.1

RUN pip install spacy stanfordnlp
RUN python -m spacy download de && \
    python -m spacy download es && \
    python -m spacy download pt && \
    python -m spacy download fr && \
    python -m spacy download it && \
    python -m spacy download nl

RUN mkdir -p /pi/ai/corenlp
# add data-* folder content to target folder
ADD data-western /pi/ai/corenlp/

