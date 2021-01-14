# Defining Kaldi root directory
export KALDI_ROOT="/home/brian/kaldi"
# Setting paths to useful tools
export PATH=$KALDI_ROOT//utils/:$KALDI_ROOT/src/bin:$KALDI_ROOT/tools/openfst/bin:$KALDI_ROOT/src/fstbin/:$KALDI_ROOT/src/gmmbin/:$KALDI_ROOT/src/featbin/:$KALDI_ROOT/src/lm/:$KALDI_ROOT/src/sgmmbin/:$KALDI_ROOT/src/sgmm2bin/:$KALDI_ROOT/src/fgmmbin/:$KALDI_ROOT/src/lmbin/:$KALDI_ROOT/src/latbin/:$PWD:$PATH
# Defining audio data directory (modify it for your installation directory!)
export DATA_ROOT="$KALDI_ROOT/egs/digits/digits_audio"
. $KALDI_ROOT/tools/env.sh
# Variable needed for proper data sorting
export LC_ALL=C
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$ALDI_ROOT/src/lib:$KALDI_ROOT/tools/openfst-1.6.7/lib
# Adding src/lmbin to path to include arpa2fst
#export arpa2fst="$KALDI_ROOT/src/lmbin"
