FROM n8nio/n8n:latest

USER root

WORKDIR /home/node/packages/cli

# Ensure the ENTRYPOINT array is empty to avoid conflicts
ENTRYPOINT []

# Copy the entrypoint.sh script into the container
COPY ./entrypoint.sh /

# Make the script executable
RUN chmod +x /entrypoint.sh

# Set the entry point to the entrypoint.sh script
ENTRYPOINT ["/entrypoint.sh"]

# Command to run n8n
CMD ["n8n"]
