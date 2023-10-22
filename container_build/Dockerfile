FROM ubuntu:latest

RUN apt-get update -y

RUN apt-get install cmake ninja-build curl git vim unzip gettext -y

RUN git clone https://github.com/neovim/neovim /home/neovim

COPY script.sh /home

COPY nvim /home/nvim

RUN chmod +x /home/script.sh

WORKDIR /home/neovim

RUN git checkout stable

RUN make CMAKE_BUILD_TYPE=Release

RUN make install

CMD ["/home/script.sh"]
