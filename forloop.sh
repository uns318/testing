#!/bin/bash 
 
for ips in `cat IPS`
do
	ssh vagrant@$ips "sudo yum install httpd -y"

done

