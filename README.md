# Scalable Cloud Web Architecture using AWS & Terraform

---

## Project Overview

This project implements a scalable, secure, and highly available cloud-based web architecture using Amazon Web Services (AWS) and Terraform. The system is designed based on modern cloud engineering best practices, leveraging Infrastructure as Code (IaC) for automation and reproducibility.

The architecture integrates multiple AWS services including CloudFront, Application Load Balancer (ALB), Auto Scaling Group (ASG), EC2 instances, CloudWatch, and SNS.


---

## Architecture Diagram

Refer to the system architecture diagram included in the project documentation for a visual representation of the infrastructure.

---

## Architecture Overview

The system follows a multi-tier architecture:

* **CloudFront (CDN)** – Global content delivery and HTTPS enforcement
* **Application Load Balancer (ALB)** – Distributes incoming traffic
* **Auto Scaling Group (ASG)** – Automatically manages EC2 instances
* **EC2 Instances** – Hosts Apache web server and application
* **CloudWatch & SNS** – Monitoring and alerting system

---

## Live Demo

The deployed application is publicly accessible via CloudFront (CDN with HTTPS enabled):

https://d5pqoo95qusn4.cloudfront.net

---

## Technologies Used

* Amazon Web Services (AWS)
* Terraform (Infrastructure as Code)
* Apache Web Server
* CloudFront (CDN)
* Application Load Balancer (ALB)
* Auto Scaling Group (ASG)
* CloudWatch (Monitoring)
* SNS (Notifications)

---

## Deployment Instructions

### ✅ Prerequisites

Ensure the following are installed and configured:

* Terraform: https://developer.hashicorp.com/terraform/downloads
* AWS CLI: https://docs.aws.amazon.com/cli/
* AWS account with appropriate permissions
* Ensure your AWS CLI is configured with the correct region (e.g., us-east-1).

---

### Setup Steps

1. Clone the repository:

```bash
git clone https://github.com/unclemande/cloud-web-architecture.git
cd cloud-web-architecture
```

2. Initialize Terraform:

```bash
terraform init
```

3. Review execution plan:

```bash
terraform plan
```

4. Deploy infrastructure:

```bash
terraform apply
```

5. Confirm deployment when prompted.

---

## Configuration

Before running Terraform, create a file named `terraform.tfvars` and provide your own values:

```hcl
vpc_id = "your-vpc-id"
public_subnets = ["subnet-xxxx", "subnet-yyyy"]
```

---

## Accessing the Application

Once deployment is complete, access the application via:

https://d5pqoo95qusn4.cloudfront.net

---

## Testing the System

* Access EC2 instances via public IP (optional)
* Test ALB DNS endpoint
* Verify CloudFront URL (HTTPS enabled)
* Refresh page multiple times to confirm load balancing
* Monitor CPU usage via CloudWatch

---

## Monitoring & Alerts

* CloudWatch monitors system performance (CPU utilization)
* SNS sends email alerts when thresholds are exceeded

---

## Automation & Reproducibility

This project is fully automated using Terraform:

* Infrastructure can be created and destroyed easily
* Configuration is consistent across deployments
* Supports repeatable and scalable deployments

To destroy infrastructure:

```bash
terraform destroy
```

---

## Challenges & Solutions

* **Issue:** Changes in user-data not reflecting
  **Solution:** Performed instance refresh in Auto Scaling Group

* **Issue:** Terraform variable errors
  **Solution:** Properly defined variables in `variables.tf`

---

## Future Improvements

* Integration with Route 53 (custom domain)
* Add AWS WAF for enhanced security
* Use Amazon RDS for database integration
* CI/CD pipeline for automated deployments

---

## References

* AWS Documentation: https://docs.aws.amazon.com/
* Terraform Documentation: https://developer.hashicorp.com/terraform/docs

---

## 👨‍💻 Author

**Nelson Nkwi**  
BSc Software Engineering  
Cloud Programming Portfolio Project  
IU International University of Applied Sciences

---

