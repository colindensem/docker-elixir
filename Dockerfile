FROM debian:wheezy
MAINTAINER Colin Densem "hello@summit360.co.uk"

# Add erlangsolutions key
RUN apt-get update && \
    apt-get install -y wget && \
    wget http://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && \
    dpkg -i erlang-solutions_1.0_all.deb && \
    apt-get update && \
    apt-get install -y elixir && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
