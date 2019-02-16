# Terraform - CS API - AWS EC2

## Build Status

| Branch | Status |
|:---:|:---:|
| master | [![CircleCI](https://circleci.com/gh/rb-org/cs-api-aws-ec2/tree/master.svg?style=svg&circle-token=ae7320bcffbddb900ffec7d242ee63e2a93be698)](https://circleci.com/gh/rb-org/cs-api-aws-ec2/tree/master)  |
| test |   |
| dev |   |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| disable\_api\_term |  | map | n/a | yes |
| ebs\_optimized |  | map | n/a | yes |
| enable\_cw\_alarm\_cpu | If true, the launched EC2 instance will have create cpu alarms | map | n/a | yes |
| enable\_cw\_alarm\_disk\_tux | If true, the launched EC2 instance will have create disk alarms | map | n/a | yes |
| enable\_cw\_metrics | Monitoring | map | n/a | yes |
| enable\_monitoring |  | map | n/a | yes |
| instance\_count |  | map | n/a | yes |
| instance\_type | EC2 | map | n/a | yes |
| key\_name |  | string | n/a | yes |
| account\_id | AWS Account ID | string | `""` | no |
| default\_tags | Map of default tags applied to all resources | map | `<map>` | no |
| log\_group\_retention |  | map | `<map>` | no |
| region | AWS Region | string | `"eu-west-1"` | no |

## Outputs

| Name | Description |
|------|-------------|
| ssh\_sg\_id |  |