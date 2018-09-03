FROM adorsys/nginx

COPY ./dist/ /opt/app-root/src/
COPY ./docker/root /

ENTRYPOINT ["/entrypoint.sh"]

CMD ["/usr/libexec/s2i/run"]
