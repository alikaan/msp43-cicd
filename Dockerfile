FROM ubuntu:22.04

RUN ln -fs /usr/share/zoneinfo/Europe/Istanbul /etc/localtime

RUN apt update 2>/dev/null &&\ 
	apt install -y apt-transport-https 2>/dev/null &&\
	apt install -y libc6-i386 libusb-0.1-4 libgconf-2-4 libncurses5 libpython2.7 libtinfo5 2>/dev/null &&\
	apt install -y curl wget unzip vim git-all man unzip 2>/dev/null &&\
	apt install -y build-essential software-properties-common 2>/dev/nulL &&\
	apt install -y ftp sshpass lftp 2>/dev/null &&\
	apt install -y dos2unix jq

RUN mkdir -p /root/Downloads 

RUN curl -L https://dr-download.ti.com/software-development/ide-configuration-compiler-or-debugger/MD-J1VdearkvK/12.0.0/CCS12.0.0.00009_linux-x64.tar.gz --output /root/Downloads/CCS12.0.0.00009_linux-x64.tar.gz --silent && \
    tar xf /root/Downloads/CCS12.0.0.00009_linux-x64.tar.gz --directory /root/Downloads

RUN /root/Downloads/CCS12.0.0.00009_linux-x64/ccs_setup_12.0.0.00009.run --mode unattended --enable-components PF_MSP430 --prefix /opt/ti/ccs1200

RUN rm /root/Downloads/CCS12.0.0.00009_linux-x64.tar.gz && \
	rm -r /root/Downloads/CCS12.0.0.00009_linux-x64

CMD ["/bin/bash"]
