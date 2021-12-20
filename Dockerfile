# FROM python:latest
FROM python:latest

# Create app directory
WORKDIR /app

# Copy the requirements file
COPY requirements.txt .

# Install app dependencies
RUN pip install -r requirements.txt

# start the virtual environment
RUN python -m venv venv

# Copy the whole folder inside the Image filesystem
COPY HAtester.py ./HAtester.py

RUN chmod +x ./HAtester.py

EXPOSE 80

CMD ["python3", "./HAtester.py", "5432"]
