FROM python:3.12-slim 
# staring a image containing python


WORKDIR /app
# navigating to the /app directory/folder, everything after this happens inside the /app directory

COPY pyproject.toml .
# copies our pyproject file so that it uses the same configuration or dependencies

COPY src/ ./src/
# copies the api source code

RUN pip install --no-cache-dir .
#installs the project and its dependencies from the previously copied pyproject.toml

EXPOSE 5000
#listens on port 5000

CMD ["python", "src/api.py"]
# runs the flask application when the container starts