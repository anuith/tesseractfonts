FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y git curl jq
RUN apt-get install -y tesseract-ocr libtesseract-dev

# Testing tesseract installation
RUN tesseract --version | grep 'tesseract'

# Add path to .bashrc and source it
RUN echo 'export TESSDATA_PREFIX=/workspaces/tessdata' >> ~/.bashrc
ENV TESSDATA_PREFIX=/workspaces/tessdata

#Download the best english trained data to tessdata
RUN mkdir -p /workspaces/tessdata
WORKDIR /workspaces/tessdata
RUN curl -LO https://github.com/tesseract-ocr/tessdata_best/raw/main/eng.traineddata
RUN curl -LO https://github.com/tesseract-ocr/tessdata_best/raw/main/tha.traineddata

WORKDIR /
RUN git clone --branch 4.1.3 https://github.com/tesseract-ocr/tesseract.git
RUN chmod +x /tesseract/src/training/tesstrain.sh

WORKDIR /workspaces
