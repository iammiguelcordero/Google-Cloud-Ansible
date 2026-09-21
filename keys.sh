# Generate the key ssh on vm-ansible
ssh-keygen -t ed25519 -N ""
# Copy the key and paste on the others vm 
cat ~/.ssh/id_ed25519.pub

#Create the folder and add the permisions
mkdir -p ~/.ssh
chmod 700 ~/.ssh
echo "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIOIhTZBFc+kLzPg7cSU3o3yYIk70v/tCR/OKt196jPA5 student-04-4242e59036a8@vm-ansible-001" >> ~/.ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys

#Done, the connection is sucessfull, test it on vm-ansible
ssh <your user>@<ip-destiny>

ansible-galaxy install geerlingguy.nginx -p roles/

ansible all -i inventory.ini -m ping

ansible-playbook -i inventory.ini site.yml