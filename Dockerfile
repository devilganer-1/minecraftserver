FROM pufferpanel/pufferpanel:latest

# Expose the ports PufferPanel uses
EXPOSE 8081 5657

# PufferPanel needs a volume to save data
VOLUME /var/lib/pufferpanel
