FROM ubuntu:22.04

RUN apt update && apt install -y curl ca-certificates

RUN curl -L https://github.com/pufferpanel/pufferpanel/releases/download/v3.0.7/pufferpanel_3.0.7_linux_amd64.tar.gz \
    -o pufferpanel.tar.gz && \
    tar -xzf pufferpanel.tar.gz && \
    mv pufferpanel /usr/local/bin/pufferpanel && \
    chmod +x /usr/local/bin/pufferpanel

RUN mkdir -p /etc/pufferpanel

ENV PUFFER_WEB_PORT=8080

EXPOSE 8080

CMD sh -c 'echo "{\"web\":{\"host\":\"0.0.0.0:8080\"},\"docker\":false}" > /etc/pufferpanel/config.json && pufferpanel run'
