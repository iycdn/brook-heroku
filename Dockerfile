FROM debian:sid

RUN set -ex\
    && apt update -y \
    && apt upgrade -y \
    && apt install -y wget nginx \
    && apt autoremove -y

COPY build.sh /build.sh
RUN chmod +x /build.sh
CMD /build.sh