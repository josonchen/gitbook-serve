# gitbook-serve
gitbook-serve on docker

##Usage

Clone your gitbook project in /home/yourname/yourbook or anywhere, then run this command.

### Run container:

    docker run -d -p 80:4000 -v /home/yourname/yourbook:/gitbook josonchen/gitbook-serve


> 4000 – GitBook default service port.

> 35729 – Live reload server port.

> /gitbook – Default working directory for GitBook container.

### Build Static Website

    $ docker run -v /gitbook -v /srv/html josonchen/gitbook-serve  gitbook build . /srv/html
