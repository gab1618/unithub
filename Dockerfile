FROM debian:stable-slim

RUN apt-get update && \
  apt-get install -y git && \
  rm -rf /var/lib/apt/lists/*

WORKDIR /srv/git
RUN chmod 755 .

RUN git init --bare repo

EXPOSE 9418

CMD ["git", "daemon", \
  "--reuseaddr", \
  "--base-path=/srv/git", \
  "--export-all", \
  "--enable=receive-pack", \
  "--verbose", \
  "--listen=0.0.0.0"]
