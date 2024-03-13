#using the latest python image
FROM python:3.10.4

#set the working directory for the app
WORKDIR /app

#copy the app over to the container
ADD app.py .

#copy the requirements file to the working directory
ADD requirements.txt .

#install dependencies in requirements file
RUN pip install -r requirements.txt

#expose port 5000 to allow us to connect to the web app
EXPOSE 5000

#run python app.py when the container is started
CMD ["python", "app.py"]