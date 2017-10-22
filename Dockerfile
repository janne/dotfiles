FROM ubuntu

# Refresh dpkg
ENV REFRESHED_AT 2017-10-22
RUN apt-get -qq update

# Deps
RUN apt-get install -y \
    build-essential \
    bash-completion \
    curl \
    screen \
    vim \
    git \
    ruby-full \
    python

# Nodejs
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get install -y nodejs

# Add dotfiles
ADD . /etc/skel/

# Add user
RUN adduser --disabled-password --gecos '' user
USER user
WORKDIR /home/user

# Add Vim plugins
RUN git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
RUN git clone https://github.com/tpope/vim-surround ~/.vim/bundle/vim-surround

CMD ["/bin/bash"]
