FROM golang
MAINTAINER Richard Goh

RUN go get github.com/prometheus/client_golang/prometheus
RUN go get github.com/prometheus/client_golang/prometheus/promhttp
RUN go get github.com/gorilla/mux
COPY . /go/src/github.com/mlrgoh/eshop-wishlist
WORKDIR /go/src/github.com/mlrgoh/eshop-wishlist/products
RUN go get && go build -o /bin/products

ENTRYPOINT ["/bin/products"]