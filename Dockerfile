ARG JAVA_VERSION

FROM docker.io/library/eclipse-temurin:${JAVA_VERSION}

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get -y upgrade && \
    find /var/lib/apt/lists -type f -print0 | xargs --null rm -f && \
    find /var/cache/apt -type f -print0 | xargs --null rm -f

WORKDIR /root
CMD ["/bin/bash"]
