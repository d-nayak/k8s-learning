FROM rockylinux:9-minimal as compiler
WORKDIR /app
COPY work/a.c .
RUN microdnf install -y gcc
RUN gcc a.c
RUN microdnf install -y tree
COPY work/create_index.sh .
RUN ["bash", "create_index.sh"]

FROM nginx
COPY --from=compiler /app /usr/share/nginx/html
