FROM node:latest

MAINTAINER joson chen <josonchen@sina.com>

LABEL version="2.6.7"

RUN npm install -g gitbook-cli && gitbook versions:install 2.6.7 && \
	apt-get clean autoclean && npm cache clear && \
	rm -rf /tmp/* /var/lib/{apt,dpkg,cache,log}/*

run mkdir /gitbook
WORKDIR /gitbook


EXPOSE 4000 35729

CMD ["/usr/local/bin/gitbook","serve","/gitbook"]
