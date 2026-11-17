FROM alpine:3.19
ENV CST_TEST_VAR=act-value
LABEL org.example.test=structure
WORKDIR /app
RUN echo "structure-test-marker" > /app/marker.txt
