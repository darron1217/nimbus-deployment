FROM debian:bullseye-slim

RUN apt-get update && apt-get install -y git make gcc g++ curl
RUN git clone https://github.com/status-im/nimbus-eth1 /nimbus-eth1
RUN cd /nimbus-eth1 && make -j4 nimbus_execution_client nrpc
WORKDIR /nimbus-eth1/build
CMD ["./nimbus_execution_client"]