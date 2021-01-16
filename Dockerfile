FROM python:3.7
RUN pip3 install torch==1.7.1
RUN apt-get update \
 && apt-get install -y \
    git portaudio19-dev libsndfile1 \
 && rm -rf /var/lib/apt/lists/*
RUN pip3 install h5py==2.10.0 \
 && pip3 install tensorflow==2.0.0 \
 && pip3 install keras==2.3.1 \
 && pip3 install librosa==0.8.0
RUN git clone https://github.com/koiking213/Speaker-Diarization.git \
 && cd Speaker-Diarization
