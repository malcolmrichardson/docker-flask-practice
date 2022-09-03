# Pulling python Docker image.
FROM python:3.8-alpine

# Copying the requirements.txt file into Docker image.
COPY ./requirements.txt /app/requirements.txt

# Switching working cwd.
WORKDIR /app

# Installing application dependencies/packages from the requriements.txt file.
RUN pip install -r requriements.txt

# Copying all content from the local file to the Docker image.
COPY . /app

# Command to run application.
ENTRYPOINT [ "python" ]

# File that will be run w/ "python" command.
CMD [ "app.py" ]