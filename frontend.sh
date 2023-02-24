yum install nginx -y 
rm -rf /usr/share/nginx/html/* 
curl -o /tmp/frontend.zip https://roboshop-artifacts.s3.amazonaws.com/frontend.zip 
cd /usr/share/nginx/html 
unzip /tmp/frontend.zip
cp config/nginx-roboshop.conf //etc/nigix/default.d/roboshop.conf
systemctl enable nginx 
systemctl restart nginx 

###Roboshop  config file is not placed yet
# if any cmd is errored or failed  we need to stop the script.