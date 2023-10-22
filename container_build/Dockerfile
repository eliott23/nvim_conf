FROM debian:bullseye

ENV TERM=xterm-256color

RUN apt update -y

RUN apt install git cmake ninja-build curl git vim unzip gettext zsh -y



COPY script.sh /home

COPY nvim_dotfile /home/nvim


WORKDIR /home/neovim



RUN chmod +x /home/script.sh

# Change default shell to ZSH
RUN chsh -s $(which zsh)

# Install Oh My Zsh
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

COPY neovim_git /home/neovim
#RUN git clone https://github.com/neovim/neovim /home/neovim
#RUN git checkout stable

RUN make CMAKE_BUILD_TYPE=Release
RUN make install

RUN git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

CMD ["/home/script.sh"]
