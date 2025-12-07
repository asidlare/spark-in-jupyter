# syntax=docker/dockerfile:1
FROM apache/spark:3.5.6-python3
ENV PYTHONUNBUFFERED=1

# Switch to root user for installation
USER root

# Set the working directory
WORKDIR /code

# Install system dependencies for grpcio
RUN apt-get update && apt-get install -y \
    build-essential \
    python3-dev \
    && rm -rf /var/lib/apt/lists/*

# install requirements
COPY requirements.txt /code/
RUN pip install --upgrade pip
RUN pip install --upgrade setuptools wheel
RUN pip install --no-cache-dir --prefer-binary -r requirements.txt

# Expose the port your application will run on
EXPOSE 9000

# CMD tail -f /dev/null
