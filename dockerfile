# Use an official Python runtime as the base image
FROM python:3.11-slim

# Set working directory inside the container
WORKDIR /app

# Copy requirements file and install dependencies
COPY . .
RUN pip install 

# Copy the rest of the application code
COPY . .

# Run the app
CMD ["python", "app.py"]
