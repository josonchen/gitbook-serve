# gitbook-serve
gitbook-serve on docker

##Usage

Clone your gitbook project in /home/yourname/yourbook or anywhere, then run this command.

docker run -d -p 4000:4000 -v /home/yourname/yourbook:/gitbook josonchen/gitbook-serve
