FROM nginx:1.13.3-alpine
RUN echo "Hello, world" >/usr/share/nginx/html/index.html

LABEL org.label-schema.vendor="Linda" \
  org.label-schema.name="Nginx Hello World" \
  org.label-schema.version="1.0.0" \
  org.label-schema.docker.schema-version="1.0"