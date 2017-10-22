FROM ubuntu

RUN apt-get update && apt-get install -y \
    bash-completion \
    curl \
    screen \
    vim \
    git \
    ruby-full \
    python \
    nodejs
ADD . /etc/skel/

RUN adduser --disabled-password --gecos '' user
USER user
WORKDIR /home/user

RUN git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
RUN git clone https://github.com/tpope/vim-surround ~/.vim/bundle/vim-surround
