docker-compose up --remove-orphans

 
docker run -it --rm --privileged --env "AWS_S3_ACCESS_KEY_ID=accessKey"    --env "AWS_S3_SECRET_ACCESS_KEY=secretKey" xueshanf/s3fs:latest  /bin/bash

cd /root


chmod 400 .passwd-s3fs

s3fs slc-conanserver /mnt/s3bucket -o passwd_file=/root/.passwd-s3fs -o url=https://s3.amazonaws.com -o use_cache=/tmp -o allow_other