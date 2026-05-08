FROM pufferpanel/pufferpanel:2.6.0

ENV PUFFER_WEB_PORT=8080

EXPOSE 8080

ENTRYPOINT []

CMD ["pufferpanel", "run"]
