FROM debian:bullseye-slim

RUN apt-get update && apt-get install -y git make gcc g++
RUN git clone https://github.com/status-im/nimbus-eth1 /nimbus-eth1
RUN cd /nimbus-eth1 && make -j4 update && make -j4 nimbus
WORKDIR /nimbus-eth1/build
CMD ["./nimbus_execution_client"]