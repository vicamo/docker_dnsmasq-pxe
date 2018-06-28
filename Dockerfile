FROM debian:stable

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get --quiet update \
	&& apt-get install --no-install-recommends --yes \
		dnsmasq

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT /entrypoint.sh
