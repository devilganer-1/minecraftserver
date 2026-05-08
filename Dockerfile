FROM pufferpanel/pufferpanel:latest

ENV PUFFER_WEB_PORT=8080

EXPOSE 8080

CMD sh -c 'mkdir -p /etc/pufferpanel && printf "{\n  \"web\": {\n    \"host\": \"0.0.0.0:8080\"\n  },\n  \"docker\": false\n}\n" > /etc/pufferpanel/config.json && pufferpanel run'
