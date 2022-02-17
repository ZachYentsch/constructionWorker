CREATE TABLE IF NOT EXISTS accounts(
  id VARCHAR(255) NOT NULL primary key COMMENT 'primary key',
  createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time Created',
  updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update',
  name varchar(255) COMMENT 'User Name',
  email varchar(255) COMMENT 'User Email',
  picture varchar(255) COMMENT 'User Picture'
) default charset utf8 COMMENT '';
CREATE Table If NOT EXISTS companies(
  id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  creatorId VARCHAR(255) NOT NULL,
  name VARCHAR(255) NOT NULL,
  location VARCHAR(255) NOT NULL,
  FOREIGN KEY(creatorId) REFERENCES accounts(id)
) default charset utf8 COMMENT '';
CREATE Table if NOT EXISTS contractors(
  id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  companyId Int,
  name VARCHAR(255) NOT NULL,
  availablity VARCHAR(255) NOT NULL,
  specialty VARCHAR (255) NOT NULL,
  FOREIGN KEY(companyId) REFERENCES companies(id)
) default charset utf8 COMMENT '';
drop Table companies;
drop Table contractors;