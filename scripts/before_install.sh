#!/bin/bash

<<<<<<< HEAD

#create our working directory if it doesnt exist
DIR="/home/ubuntu/my-app1"
if [ -d "$DIR" ]; then
  echo "${DIR} exists"
else
  echo "Creating ${DIR} directory"
  mkdir ${DIR}
fi

# Download and install nvm:
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
# in lieu of restarting the shell
\. "$HOME/.nvm/nvm.sh"

# Download and install Node.js:
nvm install 22
=======
# Create /app directory if it doesn't exist
if [ ! -d "/app" ]; then
  echo "Creating /app directory..."
  mkdir -p /app
  chown ec2-user:ec2-user /app   # Optional: set owner
fi

cd /app
npm install
npm install -g pm2
>>>>>>> 071ed360de9112b0f8559ab1cc901a7a667717ef
