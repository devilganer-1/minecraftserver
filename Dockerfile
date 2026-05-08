FROM pufferpanel/pufferpanel:latest

EXPOSE 8080
EXPOSE 5657

CMD ["pufferpanel", "run"]
