# AUTOMATE INFRASTRUCTURE WITH IAC USING TERRAFORM. PART 4 – TERRAFORM CLOUD

- What Terraform Cloud is and why use it
By now, you should be pretty comfortable writing Terraform code to provision Cloud infrastructure using Configuration Language (HCL). Terraform is an open-source system, that you installed and ran a Virtual Machine (VM) that you had to create, maintain and keep up to date. In Cloud world it is quite common to provide a managed version of an open-source software. Managed means that you do not have to install, configure and maintain it yourself – you just create an account and use it "as A Service".

Terraform Cloud is a managed service that provides you with Terraform CLI to provision infrastructure, either on demand or in response to various events.

By default, Terraform CLI performs operation on the server whene it is invoked, it is perfectly fine if you have a dedicated role who can launch it, but if you have a team who works with Terraform – you need a consistent remote environment with remote workflow and shared state to run Terraform commands.

Terraform Cloud executes Terraform commands on disposable virtual machines, this remote execution is also called remote operations.

- Install Packer on your PC

-Create a Terraform Cloud account
Follow this link, create a new account, verify your email and you are ready to start



Most of the features are free, but if you want to explore the difference between free and paid plans – you can check it on this page.

Create an organization
Select "Start from scratch", choose a name for your organization and create it.

Configure a workspace:

- Run the `packer build .\bastion.pkr.hcl` to create ami for bastion

[Packer Build Bastion Ami](./images/packer-build-bastion.PNG)

- Run the `packer build .\nginx.pkr.hcl` to create ami for nginx

[Packer Build Nginx Ami](./images/packer-build-nginx.PNG)

- Run the `packer build .\ubuntu.pkr.hcl` to create ami for ubuntu

[Packer Build Ubuntu Ami](./images/packer-build-ubuntu.PNG)

- Run the `packer build .\web.pkr.hcl` to create ami for web

[Packer Build Web Ami](./images/packer-build-web.PNG)

[Aws Amis Output](./images/aws-amis-output.PNG)

Command to destroy IAM profile

`aws iam delete-instance-profile --instance-profile-name aws_instance_profile_test`

`ansible-inventory -i inventory/aws_ec2.yml --graph -vvv`

Run Ansible playbook

SSH into bastion

From bastion ssh into nginx, tooling and wordpress

Error in the Bastion curl wordpress

- To fix the error:

`sudo vi wp-config.php`


