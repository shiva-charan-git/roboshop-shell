
code_dir=$(pwd)

echo -e "\e[35mIntalling Ngix\e[0m"
yum install nginx -y 

echo -e "\e[35mRemoveing old content \e[0m"
rm -rf /usr/share/nginx/html/* 

echo -e "\e[35m Downloading fronend Content\e[0m"
curl -o /tmp/frontend.zip https://roboshop-artifacts.s3.amazonaws.com/frontend.zip 

echo -e "\e[35m extracting downloaded frontend\e[0m"
cd /usr/share/nginx/html 
unzip /tmp/frontend.zip

echo -e "\e[35mCopying Ngix config for Roboshop\e[0m"


cp ${code_dir}/configs/nginx-roboshop.conf /etc/ngix/default.d/roboshop.conf

echo -e "\e[35mEnabling Nginx\e[0m"
systemctl enable nginx 

echo -e "\e[35mRestarting Nginx\e[0m"
systemctl restart nginx 

###Roboshop  config file is not placed yet
# if any cmd is errored or failed  we need to stop the script.