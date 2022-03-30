FROM alpine:3.15.3
EXPOSE 9222
ENTRYPOINT ["/usr/local/bin/domain_exporter"]
COPY domain_exporter_*.apk /tmp/
RUN apk add --allow-untrusted /tmp/domain_exporter_*.apk
