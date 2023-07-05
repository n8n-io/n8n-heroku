FROM n8nio/n8n:latest

USER root

WORKDIR /home/node/packages/cli


COPY ./package.json ./
COPY ./package-lock.json ./

ENTRYPOINT []

COPY ./entrypoint.sh /
RUN chmod +x /entrypoint.sh
CMD ["/entrypoint.sh"]
