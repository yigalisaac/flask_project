# Use an official Python base image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy requirements file into the container
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# (Optional) Copy the rest of your app
COPY . .

# (Optional) Command to run your app
CMD ["python", "app.py"]
