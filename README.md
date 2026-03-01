# Cloud Auto Scaling Assignment (AWS Console) - VCC Assignment 2

## Objective
Set up a VM configuration with Auto Scaling based on CPU utilization and secure access using IAM roles and firewall rules (Security Groups).

## What I implemented (AWS)
- Launch Template (Amazon Linux 2023, t2.micro)
- Application Load Balancer (HTTP:80)
- Target Group with health checks
- Auto Scaling Group (min=1, desired=1, max=3)
- Target Tracking Policy (Average CPU Utilization = 50%)
- IAM role for EC2 (least privilege)
- Security Groups: ALB-SG (internet HTTP) and EC2-SG (HTTP only from ALB)

## Validation
- Generated CPU load using `stress`
- Observed CPU spike in CloudWatch
- Verified scale-out and scale-in events in Auto Scaling Activity

## Repo Structure
- `report/` : final report and write-up
- `screenshots/` : evidence (ASG activity, CPU graph, IAM, SG rules, TG health)
- `diagrams/` : architecture diagrams
