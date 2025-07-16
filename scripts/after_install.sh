#!/bin/bash

#give permission for everything in the express-app directory
# sudo chmod -R 777 /home/ec2-user/my-app1


# Verify the Node.js version:
node -v 

# Verify npm version:
npm -v 

which npm

cd /home/ubuntu/my-app1

ls

#add npm and node to path
export NVM_DIR="$HOME/.nvm" 
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # loads nvm 
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # loads nvm bash_completion (node is in path now)

#check version
npm --version

#install node modules
npm install

echo "Installing PM2 globally"

npm install -g pm2

echo "Starting server..."

#build
npm run build  # or npm start

pm2 stop all
pm2 start npm --name "my_app" -- start 