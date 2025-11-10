FROM docker.n8n.io/n8nio/n8n:latest

USER root

# Update packages and install FFmpeg and other dependencies
RUN apt-get update && apt-get install -y ffmpeg && rm -rf /var/lib/apt/lists/*

USER node
