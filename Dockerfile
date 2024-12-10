# Use a base image with Python 3.11 for amd64 architecture
#FROM --platform=linux/amd64 python:3.11-slim
FROM  python:3.11-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file to the container (if you have one)
COPY requirements.txt /app/

# Install dependencies (if you have a requirements file)
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code into the container
COPY . /app/

EXPOSE 8501


# Set environment variables (optional)
ENV PYTHONUNBUFFERED=1

# Set the command to run your Python application
CMD ["streamlit", "run", "app.py"]

