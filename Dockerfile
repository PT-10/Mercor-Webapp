
# Use Ubuntu as the base image
FROM ubuntu

# Update the package lists and install necessary packages
RUN apt-get update && apt-get install -y \
    curl \
    build-essential

# Install Go
RUN curl -O https://dl.google.com/go/go1.16.5.linux-amd64.tar.gz
RUN tar -xvf go1.16.5.linux-amd64.tar.gz
RUN mv go /usr/local

# Set environment variables for Go
ENV GOPATH=/go
ENV PATH=$PATH:/usr/local/go/bin:$GOPATH/bin

# Set the working directory inside the container
WORKDIR /app

# Copy the source code into the container
COPY ./server .

# Build the Go application
RUN go build -o main .

# Expose the desired port for the application
EXPOSE 8080

# Set the entry point for the container
ENTRYPOINT ["./main"]
