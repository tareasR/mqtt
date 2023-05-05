FROM rrojano/mqtt

COPY mqtt.conf /mosquitto/config/mosquitto.conf

# Agregar puerto personalizado
EXPOSE 80:1883
EXPOSE 9001:9001

CMD ["/usr/sbin/mosquitto", "-c", "/mosquitto/config/mosquitto.conf"]
