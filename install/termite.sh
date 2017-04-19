# Based on https://github.com/xiouy/termite-install_ubuntu16.04.1

sudo apt-get install -y gtk-doc-tools libglib2.0-dev gobject-introspection valac libpango1.0-dev libgtk-3-dev \
  libgnutls28-dev g++ libgirepository1.0-dev libxml2-utils gperf libpcre2-dev

mkdir $HOME/termite-install
cd $HOME/termite-install

git clone --recursive https://github.com/thestinger/termite.git
git clone https://github.com/thestinger/vte-ng.git

mkdir devenv

cd vte-ng && ./autogen.sh --prefix=$(realpath ../devenv) && make -j$(nproc) && make install

cd ../termite
sed -i 's/$</$< ..\/devenv\/lib\/libvte-2.91.a/' Makefile
sed -i 's/${DESTDIR}\/etc/${DESTDIR}${PREFIX}\/etc/' Makefile
PKG_CONFIG_PATH=$(realpath ../devenv/lib/pkgconfig) make -j$(nproc)

cd $HOME/termite-install

sudo make -C termite/ install

sudo mkdir -p /lib/terminfo/x; sudo ln -s /usr/local/share/terminfo/x/xterm-termite /lib/terminfo/x/xterm-termite

rm -rf $HOME/termite-install
