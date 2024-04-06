FROM python:3.10

# Copy requirements.txt into the container:
COPY requirements.txt requirements.txt

# Install dependencies:
RUN pip install -r requirements.txt

# Copy the experiment code into the container:
ADD configs configs
ADD code code

# Run the experiment:
ENTRYPOINT ["python", "-m"]
