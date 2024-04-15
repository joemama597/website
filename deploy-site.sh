if (ruby -v)
then
  echo "ruby already installed"
else
  echo "installing ruby"
  sudo apt-get install -y ruby-full build-essential zlib1g-dev
fi

if (which bundle)
then
  echo "bundler already installed"
else
  echo "installing bundler gem"
  sudo gem install bundler
fi


if (jekyll --help)
then
  echo "jekyll already installed"
else
  echo "installing jekyll"
  sudo gem install jekyll bundler
fi