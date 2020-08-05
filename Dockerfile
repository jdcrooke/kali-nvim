FROM jdcrooke/ubuntu-base:stable

ENV LANG en_UK.UTF-8
ENV LANGUAGE en_UK:en
# ENV LC_ALL en_US.UTF-8
ENV TERM screen-256color
ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y \
  fzf \
  python3-dev \
  python3-pip \
  libssl-dev \
  libffi-dev \
  locales \
  ripgrep \
  nodejs \
  npm \
  neovim

SHELL ["/bin/zsh", "-c"]

RUN npm i -g neovim
RUN bash  <(curl -s https://raw.githubusercontent.com/jdcrooke/kali-nvim/master/utils/install-docker.sh)
RUN git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install

CMD ["nvim"]





