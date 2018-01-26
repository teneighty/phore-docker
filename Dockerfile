FROM ubuntu:16.04
RUN apt-get update
# Install bitcoin-core dependencie
RUN apt-get install --yes git build-essential libtool autotools-dev automake pkg-config libssl-dev libevent-dev bsdmainutils python3
RUN apt-get install --yes software-properties-common
RUN add-apt-repository ppa:bitcoin/bitcoin
RUN apt-get update
RUN apt-get install --yes libdb4.8-dev libdb4.8++-dev
RUN apt-get install --yes libzmq3-dev
RUN apt-get install --yes libboost-all-dev
# Install Phore
WORKDIR /
RUN git clone https://github.com/phoreproject/Phore.git
WORKDIR /Phore
RUN ./autogen.sh
RUN ./configure
RUN make
RUN make install
EXPOSE 11773
CMD ["phored", "-printtoconsole"]
