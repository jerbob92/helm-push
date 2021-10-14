FROM alpine/helm:latest
RUN apk update && \ 
    apk upgrade && \
    apk add bash && \
    apk add git && \ 
    helm plugin install https://github.com/chartmuseum/helm-push && \
    rm -rf /var/cache/apk/*

ENTRYPOINT [ "" ]
