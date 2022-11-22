CREATE USER 'holberton_user'@'localhost' IDENTIFIED BY 'projectcorrection280hbtn';
GRANT REPLICATION SLAVE ON *.* TO 'holberton_user'@'localhost';
FLUSH PRIVILEGES;
SELECT user FROM mysql.user;
