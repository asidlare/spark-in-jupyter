# syntax=docker/dockerfile:1
FROM apache/spark:4.1.0-preview2-python3
ENV PYTHONUNBUFFERED=1

# Switch to root user for installation
USER root

# Set the working directory
WORKDIR /code

# install requirements
COPY requirements.txt /code/
RUN pip install -r requirements.txt

# Expose the port your application will run on
EXPOSE 9000

# CMD tail -f /dev/null
