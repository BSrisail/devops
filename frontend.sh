echo -e "\e[32m installing nginx \e[0m"
dnf install nginx -y

echo -e "\e[33m copy expense \e[0m"
cp expense.conf /etc/nginx/default.d/expense.conf

echo -e "\e[33m enable nginx \e[0m"
systemctl enable nginx
echo -e "\e[34m start nginx \e[0m"
systemctl start nginx

rm -rf /usr/share/ngnix/html/*
curl -o /tmp/frontend.zip https://expense-artifacts.s3.amazonaws.com/frontend.zip

cd /usr/share/nginx/html
unzip /tmp/frontend.zip

systemctl restart nginx