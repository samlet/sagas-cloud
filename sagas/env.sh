#!/bin/bash
# wordnet sagas.nlu.wordnet_procs word_morph denied
# wordnet sagas.nlu.wordnet_procs word_sets 犬 ja
alias wordnet="docker run --rm samlet/servant_wordnet:0.1 python -m "

# tool sagas.nlu.transliterations trans_icu '試合はいつですか？'
alias tool="docker run --rm samlet/sagas_tool:0.1 python -m "

