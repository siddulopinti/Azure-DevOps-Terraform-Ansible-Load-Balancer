

# Azure Load Balancer with CDN and Web Servers - Terraform & Ansible

This project provisions an Azure environment using Terraform and configures the provisioned virtual machines with Nginx using Ansible. It includes the setup of a Load Balancer, CDN, Network Security Groups (NSGs), and virtual machines. Ansible is used to install and configure Nginx on the virtual machines once they are deployed.



# Requirements

- *Terraform**: To provision the Azure resources.
- *Ansible**: To configure virtual machines post-deployment.
- *Azure Account**: You need an Azure subscription to create and manage resources.
- *SSH Key**: An SSH key for access to the virtual machines.

# Setup Instructions

## Step 1: Clone the repository

Clone the repository to your local machine:

```bash
git clone https://github.com/yourusername/azure-lb-cdn.git
cd azure-lb-cdn

Step 2: Configure Terraform
Install Terraform: Ensure that Terraform is installed. You can check by running:
terraform --version



Set up Azure credentials: Make sure you have the appropriate Azure credentials set up. You can authenticate using the Azure CLI or provide service principal credentials directly in the provider configuration (provider.tf).

To log in via Azure CLI:
az login



1. Edit the variables.tf file: Customize the variables like region, VM size, and SSH public key in variables.tf.

2. Initialize Terraform: Run terraform init to initialize the working directory containing the Terraform configuration files.
terraform apply





Step 3: Configure Virtual Machines with Ansible
Install Ansible: Ensure Ansible is installed. You can check by running:
ansible --version


1. Edit the inventory file: Modify the inventory file with the private IP addresses of the virtual machines provisioned by Terraform.

2. Run the Ansible playbook: Use Ansible to configure the virtual machines by installing and starting Nginx:
ansible-playbook -i ansible/inventory ansible/playbook.yml


Step 4: Access the Web Servers
1. After the playbook runs successfully, you can access the virtual machines via their public IP addresses or through the Load Balancer IP (provided by the Terraform output).

2. If you configured the Nginx web server correctly, you should be able to access the default Nginx page on your web browser.

Step 5: Clean Up
When you're done, you can destroy the resources to avoid ongoing charges:
terraform destroy



Resources Created:


1. Virtual Network: A virtual network and subnet.

2. Public IP: A static public IP for the load balancer.

3. Load Balancer: A basic Azure Load Balancer with a frontend IP configuration.

4. CDN Profile: Azure CDN profile and endpoint linked to the load balancer’s public IP.

5. Virtual Machines: Two Linux-based virtual machines with Nginx installed.

Troubleshooting
1. If Terraform fails to initialize or apply, check the logs for any missing or incorrect configurations.

2. Ensure that the Azure credentials are set up correctly if Terraform can't authenticate to Azure.

3. If Ansible fails to configure the machines, ensure that the SSH keys and IP addresses in the inventory file are correct.

Contributing
If you'd like to contribute to this project, feel free to fork the repository, create a branch, and submit a pull request with your changes.


License
This project is licensed under the MIT License - see the LICENSE file for details.


### Notes on the README:

1. **Project Structure**: Provides a quick overview of the folder structure.
2. **Requirements**: Lists the tools you need and how to install them.
3. **Setup Instructions**: Guides the user through the steps to set up the Terraform and Ansible configuration.
4. **Resources Created**: Describes the resources that will be provisioned.
5. **Contributing**: Encourages collaboration if others want to contribute.
6. **License**: Indicates that this project is open-source under the MIT License (adjust based on your actual license).

---

Feel free to modify or expand on this template as needed! Let me know if you'd like to make any changes.


