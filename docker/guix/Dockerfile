FROM ubuntu:latest as guix

ARG MIRROR="mirrors.aliyun.com"
ARG GUIX_VERSION="1.4.0"
ARG ARCH_NAME="x86_64"
ARG GNU_FTP="https://mirrors.aliyun.com/gnu/guix"
ARG GUIX_FILE="guix-binary-${GUIX_VERSION}.${ARCH_NAME}-linux.tar.xz"

RUN sed -i "s/archive.ubuntu.com/mirrors.aliyun.com/g" /etc/apt/sources.list
RUN sed -i 's/security.ubuntu.com/mirrors.ustc.edu.cn/g' /etc/apt/sources.list

# RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* && localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# ENV LANG en_US.utf8

RUN apt-get -y update && apt-get install -y gnupg wget libarchive-tools xz-utils netbase curl

# RUN cd /tmp
WORKDIR /tmp
RUN wget ${GNU_FTP}/${GUIX_FILE}

# VERIFY:
RUN wget 'https://sv.gnu.org/people/viewgpg.php?user_id=15145' -qO - | gpg --import -
RUN wget ${GNU_FTP}/${GUIX_FILE}.sig
RUN gpg --verify ${GUIX_FILE}.sig

# UNPACK
RUN tar --warning=no-timestamp -xf ${GUIX_FILE}
RUN mv var/guix /var/ && mv gnu /

COPY setup-guix.sh /tmp/setup-guix.sh
COPY update-guix.sh /tmp/update-guix.sh
COPY channels.scm /etc/guix/channels.scm

ENV GUIX_DAEMON_ARGS "--substitute-urls=\"https://mirror.sjtu.edu.cn/guix/ https://ci.guix.gnu.org\""

RUN /tmp/setup-guix.sh
RUN /tmp/update-guix.sh

RUN apt-get install -y systemd

COPY entry-point.sh /entry-point.sh

ENTRYPOINT ["/entry-points.sh"]
CMD ["sh"]