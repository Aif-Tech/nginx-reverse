FROM --platform=linux/amd64 nginx:alpine

ENV HOST_PORT=80
ENV REVERSE_HOST=http://info.cern.ch/

COPY ./default.conf /etc/nginx/templates/default.conf.template

CMD ["nginx", "-g", "daemon off;"]