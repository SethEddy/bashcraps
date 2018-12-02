#!/bin/bash
sudo apt-get install update
sudo apt-get install figlet -y

if [ -d "$HOME/.local/bin" ]; then
	x=$HOME/.local/bin/
else
	x=$HOME/bin/
fi
  
cp bin/dice $x'dice'
chmod +x $x'dice'
  
cp bin/die $x'die'
chmod +x $x'die'

cp bin/craps $x'craps'
chmod +x $x'craps'

mkdir $HOME/.local/share/dice

cp dice/1 $HOME/.local/share/dice/1
cp dice/2 $HOME/.local/share/dice/2
cp dice/3 $HOME/.local/share/dice/3
cp dice/4 $HOME/.local/share/dice/4
cp dice/5 $HOME/.local/share/dice/5
cp dice/6 $HOME/.local/share/dice/6

echo "All done"
exit 0
