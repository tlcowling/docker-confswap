FROM tlcowling/ruby:2.1.4

MAINTAINER Tom Cowling <tom.cowling@gmail.com>

RUN gem install -v 0.0.2 confswap

ADD config_example.yaml.template /config/config_example.yaml.template
ADD cmd.sh /cmd.sh

ENV HOSTS [1,2,3,4]
ENV COORDINATION_NODE 1.1.1.1
ENV DISCOMBOBULATION_RATE 3.563

RUN confswap --output=/config/config_from_dockerfile.yaml /config/config_example.yaml.template

CMD /cmd.sh
