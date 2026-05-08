FROM pufferpanel/pufferpanel:latest

EXPOSE 8080
EXPOSE 5657

CMD sh -c "pufferpanel user add --name admin --email admin@example.com --password admin123 --admin || true && pufferpanel run"
