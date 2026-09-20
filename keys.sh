# Generate the key ssh on vm-ansible
ssh-keygen -t ed25519 -N ""
# Copy the key and paste on the others vm 
cat ~/.ssh/id_ed25519.pub

#Create the folder and add the permisions
mkdir -p ~/.ssh
chmod 700 ~/.ssh
echo "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIArAtDZmnECUqMDy8xZE41lWg0HHeLSrqFWYB5EgvI/8 student-01-c189447ec1bf@vm-ansible-001" >> ~/.ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys

#Done, the connection is sucessfull, test it on vm-ansible
ssh student-01-c189447ec1bf@10.160.0.3