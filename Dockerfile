FROM python:3.9

RUN apt-get update \
  && apt-get install -y ffmpeg \
  && apt-get autoremove -y \
  && apt-get clean -y \
  && rm -rf /var/lib/apt/lists/*

RUN pip install git+https://github.com/openai/whisper.git
