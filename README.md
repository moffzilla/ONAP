# ONAP
This project creates a running EC2 instance at AWS then install Docker, Kubernetes and deploys ONAP by Helm Charts.
 	
## Requirements

- Running on Xenial (Cores=2 Mem=8G Root-Disk=30G)
- This project has tested it in AWS Region: us-east-1
- Please note that we mount an extra volume and use as default for Docker storage.
- More minimum requirements can be found examining the Playbooys.

