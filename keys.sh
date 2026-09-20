# Generate the key ssh on vm-ansible
ssh-keygen -t ed25519 -N ""
# Copy the key and paste on the others vm 
cat ~/.ssh/id_ed25519.pub

#Create the folder and add the permisions
mkdir -p ~/.ssh
chmod 700 ~/.ssh
echo "<your ssh key>" >> ~/.ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys

#Done, the connection is sucessfull, test it on vm-ansible
ssh <your user>@<ip-destiny>