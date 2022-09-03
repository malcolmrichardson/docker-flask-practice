# Pulling python Docker image, running on Alpline Linux distro.
FROM python:3.8-alpine

# Copying the requirements.txt file into Docker image.
COPY ./requirements.txt /app/requirements.txt

# Switching working cwd.
WORKDIR /app

# Installing application dependencies/packages from the requirements.txt file.
RUN pip install -r requirements.txt

# Copying all content from the local file to the Docker image.
COPY . /app

# Command to run application within container.
ENTRYPOINT [ "python" ]

# File that will be run w/ "python" command.
CMD [ "app.py" ]