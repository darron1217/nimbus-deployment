FROM debian:bullseye-slim

RUN apt-get update && apt-get install -y git make gcc g++ git-lfs
RUN git clone https://github.com/status-im/nimbus-eth2 /nimbus-eth2
RUN cd /nimbus-eth2 && make -j4 update && make -j4 nimbus_light_client
WORKDIR /nimbus-eth2/build
CMD ["./nimbus_light_client"]