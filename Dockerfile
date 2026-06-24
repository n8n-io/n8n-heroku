FROM n8nio/n8n:latest

USER root

# Removing the old WORKDIR line as it is not needed for modern n8n
# Update trigger: v7 (Change this comment to force a rebuild in the future)

ENTRYPOINT []

COPY ./entrypoint.sh /
RUN chmod +x /entrypoint.sh
CMD ["/entrypoint.sh"]
