# Generate the key ssh on vm-ansible
ssh-keygen -t ed25519 -N ""
# Copy the key and paste on the others vm 
cat ~/.ssh/id_ed25519.pub

#Create the folder and add the permisions
mkdir -p ~/.ssh
chmod 700 ~/.ssh
echo "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAICHrGrwPVaImURv0FWMrrJHZkqOfZS0BWNQsrSNCe7iU student-01-47e4cc155a71@vm-ansible-001" >> ~/.ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys

#Done, the connection is sucessfull, test it on vm-ansible
ssh <your user>@<ip-destiny>

ansible-galaxy install geerlingguy.nginx -p roles/