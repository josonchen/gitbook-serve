# gitbook-serve
gitbook-serve on docker

##Usage

Clone your gitbook project in /home/yourname/yourbook or anywhere, then run this command.

### Run container:

    docker run -d -p 80:4000 -v /home/yourname/yourbook:/srv/gitbook joson/gitbook-serve

> 4000 – GitBook default service port.

> 35729 – Live reload server port.

> /srv/gitbook – Default working directory for GitBook container.

### Build Static Website
Clone your gitbook project in /home/yourname/yourbook or anywhere, the output dir is /home/abc ,then run this command.

    $ docker run -v /home/yourname/yourbook:/srv/gitbook -v /home/abc:/srv/html joson/gitbook-serve  gitbook build . /srv/html
