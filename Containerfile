# SPDX-FileCopyrightText: 2020 Samir Nassar <samir@samirnassar.com>
# SPDX-License-Identifier: CC0-1.0

FROM quay.io/archcontainers/archibald:2020.05.02.0

LABEL org.label-schema.description="Arch Linux linode-cli" \
      maintainer="samir@samirnassar.com" \
      vendor="Samir Nassar" \
      org.label-schema.version="2020.07.07.0" \
      org.label-schema.url="https://quay.io/repository/archcontainers/linode-cli" \
      org.label-schema.name="Arch Linux linode-cli"

RUN pacman -Syyu --noconfirm && \
  pacman -S python-pip --noconfirm && \
  pip install linode-cli && \
  chown -R archibald:archibald /home/archibald
  
WORKDIR /home/archibald
USER archibald

ENTRYPOINT ["/usr/bin/linode-cli"]
#CMD ["linode-cli"]
CMD ["profile"]
