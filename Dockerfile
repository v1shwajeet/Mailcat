# Use Python 3.11-slim as the base image for multi-platform support
FROM --platform=$TARGETPLATFORM python:3.11-slim

# Add metadata labels
LABEL maintainer="Mailcat Contributors <https://github.com/mailcat/mailcat>"
LABEL description="Platform-independent Mailcat OSINT tool for email discovery"
LABEL version="1.0"
LABEL org.opencontainers.image.source="https://github.com/mailcat/mailcat"

# Install system dependencies and Chromium browser
RUN apt-get update && apt-get install -y \
    chromium \
    chromium-driver \
    libglib2.0-0 \
    libnss3 \
    libfontconfig1 \
    libfreetype6 \
    libx11-6 \
    libx11-xcb1 \
    libxcb1 \
    libxcomposite1 \
    libxcursor1 \
    libxdamage1 \
    libxext6 \
    libxfixes3 \
    libxi6 \
    libxrandr2 \
    libxrender1 \
    libxss1 \
    libxtst6 \
    ca-certificates \
    fonts-liberation \
    libappindicator1 \
    libasound2 \
    libatk-bridge2.0-0 \
    libatk1.0-0 \
    libcups2 \
    libdbus-1-3 \
    libgdk-pixbuf2.0-0 \
    libnspr4 \
    xdg-utils \
    wget \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Install Python dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application files
COPY . .

# Set environment variables for pyppeteer
ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true \
    PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium

# Default command with help instructions
ENTRYPOINT ["python", "mailcat.py"]
CMD ["--help"]

# Add usage instructions as comments
# To pull and run this image:
# docker pull ghcr.io/mailcat/mailcat:latest
# docker run ghcr.io/mailcat/mailcat <username>
# 
# Examples:
# docker run ghcr.io/mailcat/mailcat -v username
# docker run ghcr.io/mailcat/mailcat -p gmail -p yahoo username
# docker run ghcr.io/mailcat/mailcat --help
