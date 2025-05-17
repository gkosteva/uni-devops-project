# Use a minimal base image
FROM python:3.13.2-slim

# Set the working directory
WORKDIR /app

# Copy and install dependencies
COPY src/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY src/ .

# Expose the port and run the application
EXPOSE 5000
CMD ["python3", "app.py"]

