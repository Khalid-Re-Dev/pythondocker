# Base image
FROM python:3.11-slim

# Working directory
WORKDIR /app

# Copy requirements
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy app files
COPY app.py .

# Expose port
EXPOSE 5000

# Run application
CMD ["python", "app.py"]