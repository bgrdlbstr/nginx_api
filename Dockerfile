FROM nginx
COPY nginx.conf /etc/nginx/nginx.conf
COPY certs/dev.david-vm-2004.desktop.crt /etc/nginx/dev.david-vm-2004.desktop.crt
COPY certs/dev.david-vm-2004.desktop.key /etc/nginx/dev.david-vm-2004.desktop.key
COPY certs/myCA.crt /usr/local/share/ca-certificates
RUN chmod 644 /usr/local/share/ca-certificates/myCA.crt && update-ca-certificates
