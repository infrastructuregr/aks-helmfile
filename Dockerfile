FROM infrastructuregr/helmfile

RUN apk add --update --no-cache --virtual=build gcc libffi-dev musl-dev openssl-dev make python3-dev linux-headers \
    && pip3 install azure-cli

ENTRYPOINT ["/bin/bash","-c"]
