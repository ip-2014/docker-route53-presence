FROM stackbrew/ubuntu:13.10
MAINTAINER Oliver Soell "oliver@timelinelabs.com"

RUN apt-get update -qq
RUN apt-get install -y python-boto python-requests

ADD bin/route53-presence /bin/route53-presence

ENTRYPOINT ["/bin/route53-presence"]
CMD ["-h"]
