#!/bin/bash

#this file installs a ton of software packages. delete any you don't need, and add whatever you think I missed.
#I don't use all of this software, but I use a lot of it, and I wanted to cover as many bases as possible.
#They are broken into categories for easy readability. This entire script could have been a long one-liner.

#Debian uses the apt package manager, like Ubuntu and it's dirivatives, but some package names were different, so I just duplicated the ubuntu script and changed a few lines.
sudo apt update
sudo apt upgrade -y

sudo apt install nala
nala --version
sudo nala update
#install some programming languages. I have some of these for playing around with. Others are simply here for compiling or running random bits of software I sometimes use.
#None of these take up a bunch of space, but you can delete any you know you'll never need.
sudo nala install -y \
	npm \
	nodejs \
	gcc \
	g++ \
	terminology \
	gimp \
	krita \
	libreoffice libreoffice-gtk \
	cbonsai \
	exa \
	texlive-latex-base texlive-xetex texlive-fonts-recommended texlive-fonts-extra \
	pandoc \
#	gobjc++ \
#	gcc-multilib \
#	clisp \
#	valac \
#	gfortran \
#	fort77    
#	docky \
#	chromiumr \
#	deluge \ # open source torrent client
#	inkscape \
	#blender \
	#openscad \
	#freecad \
	#kicad \
#	audacity \
#	tilda \

#super useful commandline tools and utilities. These are what I spend most of my time using.
sudo nala install -y \
	tmux \
	vim \
	ffmpeg \
	feh \
	htop \
	git \
	curl \
	lolcat \
    bat \
	xclip \
	vlc \
	fortune-mod \
	cowsay \
	#x11-xserver-utils \
	#screen \
	#xboxdrv \
    #mplayer \

#installs ranger, a file manager, and w3m, a web browser. w3m is needed to display images in ranger. The rest of the programs are other packages that go with ranger
sudo nala install -y ranger w3m w3m-img highlight atool caca-utils poppler-utils

ranger --copy-config=all

# snap stuff
sudo snap install discord
# vs-codium setup + base packages and themes
sudo snap install codium --classic
codium --install-extension foam.foam-vscode
codium --install-extension formulahendry.code-runner
codium --install-extension mechatroner.rainbow-csv
codium --install-extension cweijan.onedark-modern
codium --install-extension ms-python.black-formatter
codium --install-extension ms-python.debugpy
codium --install-extension ms-python.isort
codium --install-extension ms-python.python
codium --install-extension ms-toolsai.jupyter
codium --install-extension ms-toolsai.jupyter-keymap
codium --install-extension ms-toolsai.jupyter-renderers
codium --install-extension ms-toolsai.vscode-jupyter-cell-tags
codium --install-extension ms-toolsai.vscode-jupyter-slideshow
codium --install-extension pkief.material-icon-theme
codium --install-extension qwtel.sqlite-viewer



#dconf-editor is useful on a lot of systems, I only ever use it in elementary to customize pantheon a little bit though. If you don't know you need this, you probably don't.
#sudo apt install -y dconf-editor

#this is only needed on a gnome system. I don't use gnome too much, but gnome-tweak-tool is a requirement when I do.
#sudo apt install -y gnome-tweak-tool

#these are essentials for building/compiling certain types of projects. I use these semi-frequently, and would recommend just installing them if you've ever compiled something from source.
#you may need them down the road. I'm lazy and like to just go ahead and install them.
sudo nala install -y make cmake build-essential

#installs these just incase they were accidentally removed from the install-apt-packages script
sudo nala install -y python3 python3-setuptools

#this installs pip and some pip packages. I can't live without youtube-dl. You probably don't need the other ones.

python -m pip install pip

pip install --upgrade pip

pip install --upgrade \
	flask \
	pandas \
    streamlit \
	yahoo-fin \
	yfinance \
	TA-Lib \
	spacy \
	scipy \
	requests \
	opencv-python \
	matplotlib \
	jupyter \

    #flask_sqlalchemy \
	#youtube-dl \
	#virtualenvwrapper \
	#django \
	#mysqclient

#I don't use emacs. But to please Stallman and the church of Emacs, I'm including this here.
#sudo apt install -y emacs

#MySQL and utilities. I used to use mysql in my Rails apps.
#sudo apt install -y mysql-workbench libmysqlclient-dev mysql-server mysql-utilities libaio1 #libaio1 is a needed library for mysql.

#postgresql and utilities. I use postgresql in my Rails apps.
#sudo apt install -y postgresql postgresql-contrib libpq-dev

#this is used for developing gtk3 apps. You may also need it to compile a project from source, if it uses gtk3. I couldn't find a better group to throw this into.
#sudo apt install -y libgtk-3-dev

#These are 32 bit compatibility libraries that are needed to develop android apps on a 64bit system.
#sudo apt install -y libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 libbz2-1.0:i386

#requirements for compiling the R programming language. This script doesn't compile the R langauge. But, I compile R on all of my machines, so it was convient for me to put this stuff here.
#sudo apt install -y libreadline-dev libcurl4-openssl-dev libpcre3-dev libbz2-dev liblzma-dev libx11-dev libblas-dev xorg-dev #gobjc++ gfortran fort77 curl build-essential # are also all required
