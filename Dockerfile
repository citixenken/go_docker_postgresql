FROM golang:1.20.2

WORKDIR /usr/src/app

# copy files from host into container
COPY . .

# ensure all packages are properly installed
RUN go mod tidy
