FROM alpine
RUN apk --update add ca-certificates
COPY ./build/binary-bundle/linux/fleet ./build/binary-bundle/linux/fleetctl /usr/bin/
RUN mkdir /etc/kolide
CMD ["fleet", "serve"]
