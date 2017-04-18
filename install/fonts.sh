mkdir -p ~/.fonts
cd $HOME/Downloads

# Adobe Source Code Pro
rm 1.050R-it.zip
rm -rf source-code-pro-2.030R-ro-1.050R-it
wget https://github.com/adobe-fonts/source-code-pro/archive/2.030R-ro/1.050R-it.zip
unzip 1.050R-it.zip
cp source-code-pro-2.030R-ro-1.050R-it/TTF/*.ttf ~/.fonts/
rm 1.050R-it.zip
rm -rf source-code-pro-2.030R-ro-1.050R-it

# Roboto
rm roboto-hinted.zip
rm -rf roboto-hinted
wget https://github.com/google/roboto/releases/download/v2.136/roboto-hinted.zip
unzip roboto-hinted.zip
cp roboto-hinted/*.ttf ~/.fonts/
rm roboto-hinted.zip
rm -rf roboto-hinted

# Update the font cache
sudo fc-cache -f -v
