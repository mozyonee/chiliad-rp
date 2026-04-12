FROM debian:bookworm-slim

ARG SAMPCTL_VERSION=1.13.0
ARG SAMPCTL_GITHUB_TOKEN
ENV SAMPCTL_GITHUB_TOKEN=${SAMPCTL_GITHUB_TOKEN}

RUN dpkg --add-architecture i386 \
	&& apt-get update \
	&& apt-get install -y --no-install-recommends \
	ca-certificates \
	git \
	libc6:i386 \
	libstdc++6:i386 \
	zlib1g:i386 \
	gcc-multilib \
	g++-multilib \
	&& rm -rf /var/lib/apt/lists/*

ADD https://github.com/Southclaws/sampctl/releases/download/${SAMPCTL_VERSION}/sampctl_${SAMPCTL_VERSION}_linux_amd64.tar.gz /tmp/sampctl.tar.gz

RUN tar -xzf /tmp/sampctl.tar.gz -C /usr/local/bin sampctl \
	&& chmod +x /usr/local/bin/sampctl \
	&& rm /tmp/sampctl.tar.gz \
	&& sampctl version

RUN mkdir -p /root/.config/sampctl \
	&& printf '%s\n' \
	'{"overrides":{' \
	'"Zeex/samp-plugin-jit":"Foundation-PAWN/samp-plugin-jit-backup",' \
	'"Zeex/samp-plugin-crashdetect:v4.21":"Y-Less/samp-plugin-crashdetect:v4.21",' \
	'"Zeex/samp-plugin-crashdetect":"AmyrAhmady/samp-plugin-crashdetect:v4.22",' \
	'"Zeex/samp-plugin-profiler":"Foundation-PAWN/samp-plugin-profiler-backup"' \
	'}}' \
	> /root/.config/sampctl/remote-dependency-overrides.json

ADD https://github.com/Y-Less/samp-plugin-crashdetect/releases/download/v4.22/crashdetect-4.22-linux.tar.gz /root/.config/sampctl/plugin/github.com/Y-Less/samp-plugin-crashdetect-fa6aeabe/v4.22/5f72c08afebc6dae/crashdetect-4.22-linux.tar.gz
ADD https://github.com/samp-incognito/samp-streamer-plugin/releases/download/v2.9.6/samp-streamer-plugin-2.9.6.zip /root/.config/sampctl/plugin/github.com/samp-incognito/samp-streamer-plugin-7c00b9d8/v2.9.6/1bdfc72264892199/samp-streamer-plugin-2.9.6.zip
ADD https://github.com/nexquery/samp-textdraw-streamer/releases/download/v2.0.4/textdraw-streamer.zip /root/.config/sampctl/plugin/github.com/nexquery/samp-textdraw-streamer-e1646004/v2.0.4/2367c2471e078d10/textdraw-streamer.zip
ADD https://github.com/Y-Less/sscanf/releases/download/v2.13.8/sscanf-2.13.8-linux.tar.gz /root/.config/sampctl/plugin/github.com/Y-Less/sscanf-7b57265c/v2.13.8/b139d912d3dea0d8/sscanf-2.13.8-linux.tar.gz
ADD https://github.com/katursis/Pawn.RakNet/releases/download/1.6.0/pawnraknet-1.6.0-linux.tar.gz /root/.config/sampctl/plugin/github.com/katursis/Pawn.RakNet-3b0730cd/1.6.0/a74af9219030c69b/pawnraknet-1.6.0-linux.tar.gz
ADD https://github.com/katursis/Pawn.CMD/releases/download/3.4.0/pawncmd-3.4.0-linux.tar.gz /root/.config/sampctl/plugin/github.com/katursis/Pawn.CMD-74e198b9/3.4.0/d49bc6a8f5b40ef9/pawncmd-3.4.0-linux.tar.gz
ADD https://github.com/pBlueG/SA-MP-MySQL/releases/download/R41-4/mysql-R41-4-Debian-static.tar.gz /root/.config/sampctl/plugin/github.com/pBlueG/SA-MP-MySQL-5f509e60/R41-4/c6a2ddba7a3033f4/mysql-R41-4-Debian-static.tar.gz
ADD https://github.com/Southclaws/pawn-requests/releases/download/0.10.0/pawn-requests-linux.zip /root/.config/sampctl/plugin/github.com/Southclaws/pawn-requests-50e050dd/0.10.0/c2bfe49253711f3c/pawn-requests-linux.zip
ADD https://github.com/samp-incognito/samp-gvar-plugin/releases/download/v1.3/samp-gvar-plugin-1.3.zip /root/.config/sampctl/plugin/github.com/samp-incognito/samp-gvar-plugin-d09afead/v1.3/72fe3a3e72575816/samp-gvar-plugin-1.3.zip

RUN chmod -R a+rX /root/.config/sampctl/plugin \
	&& find /root/.config/sampctl/plugin -type f -exec touch {} +

WORKDIR /srv/chiliad
COPY . .

RUN sampctl ensure

RUN mkdir -p /srv/chiliad/scriptfiles
VOLUME ["/srv/chiliad/scriptfiles"]

EXPOSE 7777/udp

ENTRYPOINT ["sh", "-c", "printf 'host=%s\nport=%s\nuser=%s\npassword=%s\ndatabase=%s\n' \"$MYSQL_HOST\" \"$MYSQL_PORT\" \"$MYSQL_USER\" \"$MYSQL_PASSWORD\" \"$MYSQL_DATABASE\" > /srv/chiliad/scriptfiles/mysql.ini && exec sampctl run"]
