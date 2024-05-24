# Use a base image with Python and necessary dependencies
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy requirements file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy backend files
COPY backend/ .

# Expose port for Flask server
EXPOSE 5000

# Command to run the Flask server
CMD ["python", "app.py"]
