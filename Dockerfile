FROM n8nio/n8n:1.93.0

USER root
# ffmpeg + Tesseract (Deutsch) + Standardschrift
RUN apk add --no-cache \
    ffmpeg \
    tesseract-ocr \
    tesseract-ocr-data-deu \
    ttf-dejavu
USER node
