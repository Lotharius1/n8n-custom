FROM docker.n8n.io/n8nio/n8n:latest

USER root

RUN apt-get update && apt-get install -y \
    ffmpeg \
    tesseract-ocr \
    tesseract-ocr-deu \
 && rm -rf /var/lib/apt/lists/*

USER node
