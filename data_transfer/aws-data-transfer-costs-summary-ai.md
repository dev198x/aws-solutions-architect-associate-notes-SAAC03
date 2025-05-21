
# Overview of Data Transfer Costs for Common Architectures - Summary

Source: [AWS Blog](https://aws.amazon.com/blogs/architecture/overview-of-data-transfer-costs-for-common-architectures/)

## 1. Data Transfer Between AWS and the Internet

- **Inbound Data Transfer**: Free across all AWS services and regions.
- **Outbound Data Transfer**: Charged per service and varies by region. For example, EC2 to the internet has region-specific costs.

## 2. Data Transfer Within AWS

### a. Accessing Services Within the Same AWS Region
- **Via Internet Gateway**: No data transfer charges for public endpoint access within the same region.
- **Via NAT Gateway**: Incurs data processing charges per GB for traffic passing through the NAT gateway.

### b. Accessing Services Across AWS Regions
- Inter-region data transfer incurs charges that vary based on source and destination regions.

## 3. Data Transfer Between Components of Your Workload

- Data transfer between components (e.g., EC2 and RDS) may incur charges:
  - Between different Availability Zones in the same region.
  - Across different regions.
- Example: EC2 to RDS across AZs incurs charges per GB.

## 4. Best Practices to Minimize Data Transfer Costs

- **Deploy Within the Same AZ**: Reduces or avoids inter-AZ transfer costs.
- **Use Private IPs and VPC Endpoints**: Avoid public internet charges.
- **Monitor Usage**: Use AWS Cost Explorer and AWS Budgets to track and optimize data transfer spending.

> For detailed diagrams and full context, visit the [original post](https://aws.amazon.com/blogs/architecture/overview-of-data-transfer-costs-for-common-architectures/).