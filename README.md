# ONAP
This project creates a running EC2 instance at AWS then install Docker, Kubernetes and deploys ONAP by Helm Charts.
Re-using roles and charts provided by zulcss.
 	
## Requirements

- Running on Xenial (Cores=2 Mem=8G Root-Disk=30G)
- This project has tested it in AWS Region: us-east-1
- Please note that we mount an extra volume and use as default for Docker storage.
- Make sure resources as the AMI image, SSH Keys, Security Groups referenced in the artifacts exist in the selected region.
- This project defaults region US-West-2 (Oregon) & uses Ubuntu 16.04 guess OS.
- You’ll need AWS CLI installed.
- Before executing make sure you have access to AWS
    AWS_ACCESS_KEY_ID
    AWS_SECRET_ACCESS_KEY
    AWS Region
- More minimum requirements can be found examining the Playbooys.
- You will need installed this Python module & Boto can be installed from your OS distribution or python’s using the pip command, install the AWS CLI and Boto3:

## Deployment

Create the host with AWS CloudFormation
 
	Under "~/deploy"

Execute:

	aws cloudformation create-stack --stack-name ONAP-stack --template-body file://$PWD/deploy/aws-cloudformation-ONAP-Docker-Base.json

You can replace the following default settings:

	KeyName": "generic-cloud-wk"
	
	AnsibleRepository": https://github.com/moffzilla/ONAP.git"
	
	AnsiblePlaybook: "deploy/ap_onap.yml"
	
You can also create the stack at the CloudFormation Console

Remove:

	aws cloudformation delete-stack --stack-name ONAP-stack
	
You can also delete the stack at the CloudFormation Console


## Appendix - Tools:

The following tools are also included for resetting your enviroment


To terminate any AWS Instance created (it requires you to have installed aws cli)
  A) To remove all the Machines execute Script

	'./terminate_all_instances.py' 

  B) To remove an specific machine execute Script

	'./list_instances.py'

	'./terminate_instances.py [instance-id]'

  C) Manually by AWS CLI

       'aws ec2 describe-instances | grep InstanceId'

       'aws ec2 terminate-instances --instance-ids [i-id]'
