FROM imzoe/texlive-full-inkscape-ubuntu

RUN apt-get update && apt-get install -y git
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]