# 🏗️ Build Your Own AWS Infrastructure with Ease using Infrastructure as Code (IaC) Techniques 🌟

Welcome to the Terraform AWS Infrastructure Tutorial! This tutorial will guide you through the process of building your own AWS infrastructure using Terraform. By leveraging Infrastructure as Code (IaC) techniques, you will learn how to create a Virtual Private Cloud (VPC), subnets, an Internet Gateway, launch an EC2 instance, and host a simple website.

## Prerequisites
- Basic understanding of AWS services
- An AWS account with appropriate permissions
- Terraform installed on your local machine
- Basic knowledge of Terraform configuration files

## Getting Started
1. Clone the repository: `git clone https://github.com/your-username/terraform-aws-infrastructure.git`
2. Install Terraform on your local machine.
3. Set up your AWS credentials.
4. Navigate to the project directory: `cd terraform-aws-infrastructure`

## Project Structure
The project directory contains the following files:

- `terraform.tf`: Terraform configuration file for initializing providers.
- `provider.tf`: Terraform configuration file for specifying the AWS provider and region.
- `vpc.tf`: Terraform configuration file for creating the VPC.
- `subnet.tf`: Terraform configuration file for creating subnets.
- `internetgateway.tf`: Terraform configuration file for creating an Internet Gateway.
- `route.tf`: Terraform configuration file for creating a route table.
- `ec2.tf`: Terraform configuration file for launching an EC2 instance.
- `userdata.sh`: Shell script for configuring the EC2 instance.

## Usage
1. Update the necessary variables and configurations in the Terraform files.
2. Run `terraform init` to initialize the Terraform project.
3. Run `terraform plan` to preview the changes that will be made.
4. Run `terraform apply` to apply the changes and create the AWS infrastructure.
5. Once the infrastructure is created, you can access the website hosted on the EC2 instance.

## Cleanup
To clean up and delete the AWS infrastructure created by Terraform, run `terraform destroy`.

## Contributing
Contributions are welcome! If you find any issues or have suggestions for improvements, please open an issue or submit a pull request.

## License
This project is licensed under the [MIT License](LICENSE).

## More Detailes
For more details, you can also refer to the accompanying [blog post](https://dhananjaykulkarni.hashnode.dev/build-your-own-aws-infrastructure-with-ease-using-infrastructure-as-code-iac-techniques).

---

Enjoy your Terraform AWS infrastructure journey! If you have any questions or need further assistance, please don't hesitate to reach out.

Happy coding! 🚀👩‍💻👨‍💻
