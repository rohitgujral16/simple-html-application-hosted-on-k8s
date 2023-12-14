# simple-html-application-hosted-on-AWS-using-ApiGateway-and-Lambda
## Introduction
The idea is to display a string for eg "Hello world" and with the ability to update it without redeploying the main application.

## FLOW

S3 bucket(containing string)--> Lambda (to read string from bucket)--> ApiGateway(To host and integrate with lambda)
## To achieve this we will use the below services
- S3 Bucket  (To store a text file containing string)
- AWS Lambda (To host the logic to read the string from S3)
- AWS APIGateway (To host API which integrates with lambda)
- Github actions (To update the file in S3 once the text file gets updated)

## Prerequisites
- AWS Account
- S3 Bucket
- Terraform

## Deploying using IAC
1. Clone this repository
```console
git clone https://github.com/rohitgujral16/simple-html-application-hosted-on-k8s.git
cd simple-html-application-hosted-using-lambda
```
2. Update S3 bucket name in variables.tf

3. Run terraform to create the infrastructure
```console
terraform init
terraform apply
```
4. You will get APi gateway url post running terraform apply

5. Open the url in browser you should see the string displayed

## Updating the string
Update the file dynamic_string.txt - This will trigger a github actions which will update the file content in S3 bucket

## Destroy
```console
terraform destroy
```