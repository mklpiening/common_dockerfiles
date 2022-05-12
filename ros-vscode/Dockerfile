FROM ros:noetic-ros-core-focal

WORKDIR /workspace

RUN apt update
RUN apt upgrade -q -y

# base packages
RUN apt install -q -y --no-install-recommends build-essential curl tmux vim git python3 python3-pip

# install ros tools
RUN apt install -q -y --no-install-recommends python3-catkin-tools python3-catkin-lint python3-rosdep 
RUN apt install -q -y --no-install-recommends ros-noetic-rviz
RUN apt install -q -y --no-install-recommends ros-noetic-rqt ros-noetic-rqt-common-plugins ros-noetic-rqt-tf-tree
RUN rosdep init

# install misc stuff
RUN apt install -q -y --no-install-recommends ranger neofetch
RUN apt install -q -y --no-install-recommends qt5-style-kvantum qt5-style-kvantum-themes
RUN apt install -q -y --no-install-recommends zsh

# add user docker
RUN echo "root:docker" | chpasswd
RUN useradd -g sudo -ms /usr/bin/zsh docker
RUN echo "docker:docker" | chpasswd

USER docker
WORKDIR /home/docker

# zsh config
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
RUN git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-/home/docker/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
RUN git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-/home/docker/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
COPY zshrc /home/docker/.zshrc

# tmux
RUN git clone https://github.com/tmux-plugins/tpm /home/docker/.tmux/plugins/tpm

CMD [ "zsh" ]