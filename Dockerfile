FROM curlimages/curl
RUN curl -L https://pagekite.net/pk/pagekite.py >/tmp/pagekite

FROM frolvlad/alpine-python2
COPY --from=0 /tmp/pagekite pagekite
RUN chmod +x pagekite