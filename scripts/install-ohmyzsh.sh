#!/usr/bin/env bash

if [ -f /home/vagrant/.oh-my-zsh ]
then
    echo "Oh My Zsh already installed."
    exit 0
fi

curl -sS https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -o ./install.sh
chmod +x install.sh

su - vagrant -c 'echo "vagrant" | ./install.sh'
rm -rf /home/vagrant/install.sh

echo "Set the RobbyRussel theme for Homestead"
sed -i 's/${ret_status} %/${ret_status} Homestead %/g'  /home/vagrant/.oh-my-zsh/themes/robbyrussell.zsh-theme

exit 0