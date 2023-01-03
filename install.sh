mkdir -p /opt/snapdrop

git clone https://github.com/RobinLinus/snapdrop.git /opt/snapdrop
sed -i 's/8080/3000/g' /opt/snapdrop/docker-compose.yml
yes | cp -f ./xdg/icons/*.png ~/.local/share/icons
yes | cp -f ./xdg/*.desktop ~/.local/share/applications