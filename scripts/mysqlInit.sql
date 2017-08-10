use mysql;
DROP DATABASE IF EXISTS <gitea_server_db>;
CREATE DATABASE IF NOT EXISTS <gitea_server_db> CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

CREATE USER '<gitea_user>'@'localhost' IDENTIFIED BY '<gitea_password>';
CREATE USER '<gitea_user>'@'%' IDENTIFIED BY '<gitea_password>';
GRANT ALL PRIVILEGES ON <gitea_server_db>.* TO '<gitea_user>'@'localhost';
GRANT ALL PRIVILEGES ON <gitea_server_db>.* TO '<gitea_user>'@'%';

FLUSH PRIVILEGES;
exit
