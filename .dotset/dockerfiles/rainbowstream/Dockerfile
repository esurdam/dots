# Run Rainbowstream in a container
#
# docker run -it --rm \
#	-v /etc/localtime:/etc/localtime:ro \
#	-v $HOME/.dotset/.rainbow_oauth:/root/.rainbow_oauth \ # mount config files
#	-v $HOME/.dotset/.rainbow_config.json:/root/.rainbow_config.json \
#	--name rainbowstream \
#	esurdam/rainbowstream
#
FROM alpine:latest
MAINTAINER Evan Surdam <es@cosi.io>

RUN apk --no-cache add \
	build-base \
	ca-certificates \
	freetype \
	freetype-dev \
	openjpeg-dev \
	python \
	python-dev \
	py-pip \
	zlib-dev \
	&& pip install pillow==2.8.0 rainbowstream

ENTRYPOINT [ "rainbowstream" ]

