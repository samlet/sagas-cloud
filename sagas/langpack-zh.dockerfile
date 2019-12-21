FROM samlet/sagas_builder:0.1

RUN pip install pyltp py4j jieba pypinyin grpcio==1.25.0 grpcio-tools==1.25.0

RUN mkdir -p /pi/ai/ltp
# add data-* folder content to target folder
ADD data-ltp /pi/ai/ltp/

