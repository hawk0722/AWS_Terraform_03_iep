# Terraform Sample
## AWS Resource
This includes of the following resources:
- Virtual private cloud
- Subnets (Public, Private)
- IAM Role with AmazonSSMFullAccess
- Interface Endpoint (ssm, ssmmessages, ec2messages)

## SystemConfiguration
![SystemConfiguration](/img/SystemConfiguration.svg)

## Security groups
Inbound rules
|  Type  |  Protocol  |  Port  range |  Source  |
| ---- | ---- | ---- | ---- |
|  HTTPS  |  TCP  |  443  |  10.0.0.0/16  |

Outbound rules
|  Type  |  Protocol  |  Port  range |  Destination  |
| ---- | ---- | ---- | ---- |
|  All traffic  |  All  |  All  |  0.0.0.0/0  |

## Instructions
Make sure have the [AWS CLI](https://aws.amazon.com/jp/cli/) and [Terraform](https://www.terraform.io/downloads)

1. Update terraform.tfvars with your desired values.

2. Run the following command.

```bash:bash
terraform init
terraform plan
terraform apply
```

## Notes
- The deployment was tested on windows.
