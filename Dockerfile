FROM golang:1.20.2

WORKDIR /usr/src/app

# handle hot reloading/live reload for Go apps
RUN go install github.com/cosmtrek/air@latest

# copy files from host into container
COPY . .

# ensure all packages are properly installed
RUN go mod tidy
