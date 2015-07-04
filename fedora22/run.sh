#!/bin/bash
sed -i "s/__MAIL_SERVER__/${MAIL_SERVER}/" /etc/bluelatex/org.gnieh.blue.common/application.conf
sed -i "s/__PUBLIC_HOST__/${PUBLIC_HOST}/" /etc/bluelatex/org.gnieh.blue.common/application.conf

su - couchdb -c "couchdb -b"
su - bluelatex -s /bin/bash -c "/usr/bin/java -Dfelix.config.properties=file:/etc/bluelatex/config.properties -cp /usr/lib/bluelatex/bin/blue-launcher.jar org.apache.felix.main.Main"
