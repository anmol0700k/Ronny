if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/anmol0700k/Ronny /Ronny
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Ronny
fi
cd /Ronny
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
