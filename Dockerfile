
FROM golang:1.16-alpine

# Set destination
WORKDIR /app


# Download Go modules
COPY go.mod ./
# COPY go.sum ./
RUN go mod download

# Copy the source code.
COPY *.go ./

# Build
RUN go build -o /docker-go

# Port
EXPOSE 8080

# Run
CMD [ "/docker-go" ]