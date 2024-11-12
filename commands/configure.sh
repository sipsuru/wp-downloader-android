pkg update -y
pkg upgrade -y

# Install required packages
pkg install -y git
pkg install -y nodejs

# Clone the repository
git clone https://github.com/MaximilianGT500/wp-downloader.git

# Change to the repository directory
cd wp-downloader

# Install project dependencies and pm2 globally
npm install
npm install -g pm2
