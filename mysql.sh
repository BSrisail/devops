log= /tmp/expense.log

echo -e "\e[32m installing nginx \e[0m"
dnf module disable mysql -y &>>log
echo $?

echo -e "\e[33m copy expense \e[0m"
cp mysql.repo /etc/yum.repos.d/mysql.repo &>>log
echo $?

echo -e "\e[35m enable nginx \e[0m"
dnf install mysql-community-server -y &>>log
echo $?

echo -e "\e[34m enable nginx \e[0m"
systemctl enable mysqld
echo $?

echo -e "\e[36m start nginx \e[0m"
systemctl start mysqld
echo $?

mysql_secure_installation --set-root-pass ExpenseApp@1
