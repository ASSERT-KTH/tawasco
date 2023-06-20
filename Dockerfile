FROM ubuntu:20.04 as builder

ENV DEBIAN_FRONTEND=noninteractive

# Install packages
RUN apt-get update  && apt-get -y upgrade
RUN apt-get install -y wget curl

# Install tracer
#  We copy from this machine since compiling it is quite difficult
#   Install PIN
RUN dpkg --add-architecture i386
RUN wget http://software.intel.com/sites/landingpage/pintool/downloads/pin-3.15-98253-gb56e429b1-gcc-linux.tar.gz
RUN tar xzf pin-3.15-98253-gb56e429b1-gcc-linux.tar.gz
RUN mv pin-3.15-98253-gb56e429b1-gcc-linux /opt
RUN export PIN_ROOT=/opt/pin-3.15-98253-gb56e429b1-gcc-linux
RUN echo -e "\nexport PIN_ROOT=/opt/pin-3.15-98253-gb56e429b1-gcc-linux" >> ~/.bashrc

# For this to work inside the container the docker needs to be run with --privileged
COPY Tracer/TracerPIN/ /TracerPIN
RUN cp -a /TracerPIN/Tracer /usr/local/bin
RUN	cp -a /TracerPIN/obj-* /usr/local/bin

# Install cargo first
RUN curl https://sh.rustup.rs -sSf > rustup.sh
RUN chmod 755 rustup.sh
RUN ./rustup.sh -y
RUN apt-get install -y gcc clang
RUN ~/.cargo/bin/rustup update

# Install wasm-tools
RUN ~/.cargo/bin/cargo install wasm-tools


# Install wasi-sdk
COPY download_wasi_sdk.sh /download_wasi.sh
RUN bash /download_wasi.sh


# Install wasmtime
# Copy our version of wasmtime :)
# RUN curl https://wasmtime.dev/install.sh -sSf | bash
RUN ~/.cargo/bin/rustup target add wasm32-wasi

# RUN rm -rf /wasmtime_upstream

WORKDIR /

# Copy our scripts
# Install python

# Install dtw_tools

# RUN wget -O dtw.gz https://github.com/Jacarte/RuSTRAC/releases/download/0.35/dtw-tools-x86_64-linux-0.35.gz
# RUN tar xf dtw.gz
# tar xfz do: z: uncompress, f: file, x: extract
# RUN mv dtw-tools* /usr/local/bin

# Install the collectors here
RUN apt-get install -y python3 python3-pip python2
# RUN python --version
COPY wbc/deadpool/deadpool_dca.py /wbc/deadpool/deadpool_dca.py
COPY wbc/deadpool/deadpool_dfa.py /wbc/deadpool/deadpool_dfa.py
COPY wbc/deadpool/deadpool_dfa_experimental.py /wbc/deadpool/deadpool_dfa_experimental.py
COPY wbc/ches2016/wb_challenge.wasm /wbc/ches2016/wb_challenge.wasm
COPY wbc/ches2016/trace_it.py /wbc/ches2016/trace_it.py

# Install daredevil here !
RUN apt-get install -y git clang make libomp-dev --no-install-recommends
RUN git clone --recursive https://github.com/SideChannelMarvels/Daredevil.git
WORKDIR /Daredevil
RUN make
RUN make install

# Install binaryen
RUN git clone --recursive https://github.com/WebAssembly/binaryen.git /binaryen
WORKDIR /binaryen
# RUN git submodule init
# RUN git submodule update
RUN cmake . && make
RUN make install

WORKDIR /


# Copy from previous image
# COPY --from=builder /go/src/github.com/alexellis/href-counter/app ./

