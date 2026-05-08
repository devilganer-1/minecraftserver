FROM pufferpanel/pufferpanel:latest

# Expose panel + daemon ports
EXPOSE 8081 5657


# Start PufferPanel
CMD ["pufferpanel", "run"]
