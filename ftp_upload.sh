#!/bin/bash
HOST=host  #FTP server host or IP address.
USER=user  #FTP user
PASS=pass  #Password
FILE=file  #File to be sent

ftp -inv $HOST << EOF

# Provide credentials
user $USER $PASS

# Change directory
cd /public_html/

# Put file.
put $FILE

# End FTP Connection
bye

EOF
