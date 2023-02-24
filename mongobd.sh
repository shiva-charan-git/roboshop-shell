cp configs/mongodb.repo /etc/yum.repos.d/mango.repo
yum install mongodb-org -y 
systemctl enable mongod 
systemctl start mongod 

#upadte vim /etc/mongod.conf file from 127.0.0.1 to 0.0.0.0