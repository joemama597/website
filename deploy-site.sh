if (ruby -v)
then
  echo "ruby already installed"
else
  echo "installing ruby"
  sudo apt-get install -y ruby-full
fi