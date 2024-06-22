# Use the official Python image from the Docker Hub
FROM python:3.9-slim

# Set the working directory in the container to the root of your project
WORKDIR /sample_streamlit_app

# Copy the requirements file into the container
COPY requirements.txt requirements.txt

# Install the dependencies specified in the requirements file
RUN pip install -r requirements.txt

# Copy the rest of the application code into the container
COPY . .

# Expose the port that Streamlit will run on
EXPOSE 8501

# Command to run the Streamlit app
CMD ["streamlit", "run", "main.py"]
