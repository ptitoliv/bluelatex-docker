# Prerequisites

## Ressources

A SMTP server access is needed for sending registration and notifications mails.

## Configuration

\BlueLatex needs two parameters to be set :
  * Public Host : This parametere is used for generating \BlueLatex URL used for mail notifications. Must be the IP or FQDN of the host system.
  * Mail Server : \BlueLatex needs a mail server for registration and notification mails.

# Building Docker image

To create the image, run the following command into the centos7 folder (Only supported version for now):

```shell
cd centos7
docker build --rm -t you/bluelatex .
```

The both parameters described before must be set using Docker environment variables in order to have a fully \Bluelatex running instance.

\BlueLatex is running on the 8080/tcp port. This one must be mapped on the host
system.

To run the docker image, execute the following command : 

```shell
docker run -p 8080:8080 -e PUBLIC_HOST=<PUBLIC_IP_OR_FQDN> -e MAIL_SERVER=<MAIL_SERVER_IP_OR_FQDN> -d you/bluelatex
```
