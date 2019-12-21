FROM samlet/sagas_base:0.1

RUN pip install fire waitress simplejson clipboard graphviz
RUN pip install honcho iso-639 kroman cyrtranslit


