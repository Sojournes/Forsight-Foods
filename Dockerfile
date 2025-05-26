# Use an official Python runtime as a parent image
FROM python:3.9-slim-buster

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container at /app
COPY requirements.txt .

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the current directory contents into the container at /app
COPY . .

# Expose the port that Streamlit runs on
EXPOSE 8501

# Run the Streamlit application
# For Streamlit apps, it's common to run with 'streamlit run'
CMD ["streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"]