# Dockerfile

# The first instruction is what image we want to base our container on
# We Use an official Python runtime as a parent image
FROM python:3.9

# Allows docker to cache installed dependencies between builds
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt


# Mounts the application code to the image
COPY . .
WORKDIR /mysite

EXPOSE 8080

CMD ["python3", "application/manage.py", "runserver", "0.0.0.0:8080"]