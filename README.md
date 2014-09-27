# Pre-requisites

\BlueLatex needs two parameters to be set :
  * Public IP: This IP is used for generating \BlueLatex URL used for mail notifications.
  * Mail Server : \BlueLatex needs a mail server for registration and notification mails.

# Running Docker images

To create the image, run the following command :

```shell
docker build -t ptitoliv/bluelatex:centos7 .
```

The both parameters described before must be set using Docker environment variables in order to have a fully \Bluelatex running instance.

\BlueLatex is running on the 8080/tcp port. This one must be mapped on the host
system.

To run the docker image, execute the following command : 

```shell
docker run -p 8080:8080 -e PUBLIC_IP=<PUBLIC_IP_OR_FQDN> -e MAIL_SERVER=<MAIL_SERVER_IP_OR_FQDN> -d ptitoliv/bluelatex:centos7
```
