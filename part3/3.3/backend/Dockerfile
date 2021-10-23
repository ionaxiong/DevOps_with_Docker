# Install golang 1.16
FROM golang:1.16

# REQUEST_ORIGIN to pass an url through the cors check
ENV REQUEST_ORIGIN=http://localhost:5000

WORKDIR /usr/src/app

# project runs in a docker container with port 8080 published
EXPOSE 8080

COPY . .

# Run go build. It will generate a binary named "server"
RUN go build .

#add an user "backenduser"
RUN useradd -m backenduser

#change user with the directive USER
USER backenduser

# Execute the file
# CMD echo $REQUEST_ORIGIN
CMD ["./server"]

