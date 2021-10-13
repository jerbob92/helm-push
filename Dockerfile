FROM alpine/helm:latest
RUN apk update && \ 
    apk add git && \ 
    helm plugin install https://github.com/chartmuseum/helm-push && \
    rm -rf /var/cache/apk/*

ENTRYPOINT [ "" ]
