#ng image where workspace (GOPATH) configured at /go.
FROM golang:1.6

# Install dependencies
RUN go get gopkg.in/mgo.v2
RUN go get github.com/gorilla/mux

# copy the local package files to the container workspace
ADD . /go/src/github.com/sarataha/cinema/movies
#ADD . /go/src/github.com/aboubakrkh/microservicesgp/movies
# Setting up working directory
WORKDIR /go/src/github.com/sarataha/cinema/movies
#WORKDIR /go/src/github.com/aboubakrkh/microservicesgp/movies

# Build the movies command inside the container.
RUN go install github.com/sarataha/cinema/movies
#RUN go install github.com/aboubakrkh/microservicesgp/movies

# Run the movies microservice when the container starts.
ENTRYPOINT /go/bin/movies

# Service listens on port 8080.
EXPOSE 8081





















