FROM n8nio/n8n:ai-beta

USER root

WORKDIR /home/node/packages/cli


# This let us install packages and used them in the code node
# note that you will need to update NODE_FUNCTION_ALLOW_EXTERNAL in heroku dashboard
COPY ./package.json ./
COPY ./package-lock.json ./
RUN npm install
RUN cp -a node_modules/. /usr/local/lib/node_modules/


ENTRYPOINT []

COPY ./entrypoint.sh /
RUN chmod +x /entrypoint.sh
CMD ["/entrypoint.sh"]
