FROM adorsys/ci-frontend

COPY ./dist/ /opt/app-root/src/

ENTRYPOINT ["/entrypoint.sh"]

CMD ["/usr/libexec/s2i/run"]
