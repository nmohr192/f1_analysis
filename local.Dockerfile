FROM gcr.io/deeplearning-platform-release/pytorch-gpu.1-9@sha256:80f82d97a6846169042d6db42a404e6d81dbbc4cf0a6c25983d4ead58f2ec136

ADD requirements.txt requirements.txt
RUN pip install -r requirements.txt

RUN pip install icevision==0.11.0 --no-deps

RUN apt-get update
RUN apt-get install ffmpeg libsm6 libxext6  -y
