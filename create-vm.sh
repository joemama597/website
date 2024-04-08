
if (multipass version)
then
  echo "multipass already installed"
else
  echo "installing multipass"
  sudo snap install multipass
  sleep 5
fi

if (sudo snap services | grep 'multipass.multipassd' | grep active)
then 
  echo "multipass already active"
else
  echo "restarting multipass"
  sudo snap restart multipass.multipassd
  sleep 5
fi

if (multipass info $VM | grep Running)
then
  echo "$VM vm already exists"
else 
  echo "launching $VM vm"
  multipass launch --name $VM -c 4 -m 4G
fi

#multipass transfer server.ts $VM:
multipass transfer deploy-site.sh $VM:

multipass shell $VM
