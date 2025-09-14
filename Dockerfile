FROM debian:bullseye-slim

# Cài đặt rsync và openssh-client
RUN apt-get update \
 && apt-get install -y --no-install-recommends rsync openssh-client \
 && rm -rf /var/lib/apt/lists/*

# Label
LABEL "com.github.actions.name"="Deploy with rsync" \
      "com.github.actions.description"="Deploy to a remote server using rsync over ssh" \
      "com.github.actions.color"="green" \
      "com.github.actions.icon"="truck" \
      "repository"="http://github.com/AEnterprise/rsync-deploy" \
      "homepage"="https://github.com/AEnterprise/rsync-deploy" \
      "maintainer"="AEnterprise <aenterprise@aenterprise.info>"

# Copy entrypoint
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
