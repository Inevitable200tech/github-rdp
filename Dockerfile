FROM ubuntu:20.04
RUN apt-get update && apt-get install -y xfce4 desktop-base xfce4-terminal xscreensaver xrdp qbittorrent curl unzip wget sudo ufw && apt-get clean
COPY new.sh /usr/local/bin/new.sh
RUN chmod +x /usr/local/bin/new.sh
ENV NGROK_AUTH_TOKEN="32SDx5B0fj7evlv1ti9TD7z98ig_6821BUcaMkJMPbpFZwi6x"
EXPOSE 4563
CMD ["new.sh"]
