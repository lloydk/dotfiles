cd $HOME/Downloads
wget https://github.com/adobe-fonts/source-code-pro/archive/2.030R-ro/1.050R-it.zip

unzip 1.050R-it.zip

mkdir -p ~/.fonts

cp source-code-pro-2.030R-ro-1.050R-it/TTF/*.ttf ~/.fonts/

sudo fc-cache -f -v

rm 1.050R-it.zip
rm -rf source-code-pro-2.030R-ro-1.050R-it

