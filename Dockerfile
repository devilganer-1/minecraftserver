FROM pufferpanel/pufferpanel:latest

ENV PUFFER_WEB_PORT=8080

EXPOSE 8080

CMD sh -c "mkdir -p /etc/pufferpanel && echo 'docker: false' > /etc/pufferpanel/config.json && pufferpanel run"
