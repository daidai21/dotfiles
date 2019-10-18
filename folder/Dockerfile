# build ubuntu develop env


# dotfiles error

# build cmd:
# >>> sudo docker build -t ubuntu:develop .
 


# Pull base image
FROM ubuntu:16.04


# Add files
ADD https://github.com/daidai21/dotfiles/blob/master/.gitconfig /root
ADD https://github.com/daidai21/dotfiles/blob/master/.tmux.conf /root
ADD https://github.com/daidai21/dotfiles/blob/master/.vimrc /root
ADD https://github.com/daidai21/dotfiles/blob/master/.zshrc /root


# Install
RUN cd /home \
    && apt-get update \
    # install basic development tool
    && apt-get install --assume-yes --fix-missing \
        git \
        vim \
        tree \
        tmux \
        htop \
    # set up Python env
    && apt-get install --assume-yes --fix-missing \
        python3 \
        python3-pip \
        python3-dev \
    # set up C++ env
    && apt-get install --assume-yes --fix-missing \
        build-essential \
        g++ \
        gcc \
        libboost-all-dev


# Set environment variable
ENV HOME /root


# Define working directory
WORKDIR /root


# Define default command
CMD ["bash]

