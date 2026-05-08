FROM pufferpanel/pufferpanel:latest

# Expose panel + daemon ports
EXPOSE 8081 5657

# Persistent storage
VOLUME /var/lib/pufferpanel

# Start PufferPanel
CMD ["pufferpanel", "run"]
