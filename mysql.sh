echo -e "\e[32m installing nginx \e[0m"
dnf module disable mysql -y &>>/tmp/expense.log

echo -e "\e[33m copy expense \e[0m"
cp mysql.repo /etc/yum.repos.d/mysql.repo &>>/tmp/expense.log

echo -e "\e[35m enable nginx \e[0m"
dnf install mysql-community-server -y &>>/tmp/expense.log

echo -e "\e[34m enable nginx \e[0m"
systemctl enable mysqld

echo -e "\e[36m enable nginx \e[0m"
systemctl start mysqld

mysql_secure_installation --set-root-pass ExpenseApp@1
