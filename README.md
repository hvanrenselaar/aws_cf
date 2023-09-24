# aws_cf
Experiment with AWS and CF

For reference, see https://coldfusion.adobe.com/2020/12/aws-s3-cloud-storage-coldfusion-2021/

The CF script takes a file named file3.txt, copies it to our s3 bucket, and then downloads it and stores it in a folder called Uploads. 

You can see it worked through the output on the script and by running the following command in the AWS CLI: 

aws s3 ls lerntools

