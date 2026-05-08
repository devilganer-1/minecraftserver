FROM pufferpanel/pufferpanel:2.6.0

ENTRYPOINT []

ENV PUFFER_WEB_PORT=8080

EXPOSE 8080

CMD ["sh", "-c", "echo '{\"web\":{\"host\":\"0.0.0.0:8080\"},\"docker\":false}' > /etc/pufferpanel/config.json && pufferpanel run"]
