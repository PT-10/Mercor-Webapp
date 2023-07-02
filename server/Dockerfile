# USE THE OFFICIAL PYTHON LANGUAGE AS THE BASE IMAGE 
FROM python

# SET THE WORKING DIRECTORY TO /app
WORKDIR /app

# Copy the Python file to the container
COPY upload .

# Set the command to run when the container starts
CMD [ "python", ".upload/inference.py" ]

# make this docker file
# confirm do I need save these files locally
# on request I should just creat an image 
# and then deploy that image on the aws server 
# return the port and IP address for the container