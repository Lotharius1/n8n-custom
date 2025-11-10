FROM n8nio/n8n:stable

USER root
# ffmpeg + tesseract + deutsche Sprachdatei (robust, unabhängig von Paketnamen)
RUN apk add --no-cache ffmpeg tesseract-ocr ttf-dejavu wget ca-certificates && \
    update-ca-certificates && \
    mkdir -p /usr/share/tessdata && \
    wget -O /usr/share/tessdata/deu.traineddata \
      https://github.com/tesseract-ocr/tessdata_fast/raw/main/deu.traineddata

USER node
