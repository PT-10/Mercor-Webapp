# Start from a base Golang image
FROM golang:1.16-alpine

# Install Docker CLI dependencies
RUN apk add --no-cache curl

# Download and install Docker CLI binary
RUN curl -fsSL https://download.docker.com/linux/static/stable/x86_64/docker-20.10.7.tgz \
    | tar xzvf - --strip-components=1 -C /usr/local/bin docker/docker

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
