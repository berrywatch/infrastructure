# infrastructure
### Prerequisite
* AWS CLI
### Instruction
1. Open terminal
2. Use AWS CLI and CloudFormation template "csye6225-infra.json" to auto create network resources
### Command
Import Certificate<br>
`` aws iam upload-server-certificate --server-certificate-name <certificate_object_name>
--certificate-body file://./prod_kanzhang_me.crt
--private-key file://./private.key
--certificate-chain file://./prod_kanzhang_me.ca-bundle``

Verify the certificate information<br>
``aws iam get-server-certificate --server-certificate-name <certificate_object_name>``

Set up load balancer to use the certificate<br>
``aws elb set-load-balancer-listener-ssl-certificate --load-balancer-name <my-loadbalancer> --load-balancer-port 443 --ssl-certificate-id <arn:aws:iam::123456789012:server-certificate>/<certificate_object_name>``