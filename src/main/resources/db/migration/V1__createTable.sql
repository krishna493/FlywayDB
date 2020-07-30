CREATE TABLE USER_REGISTRATION (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  username varchar(100) NOT NULL,
  first_name varchar(45) NOT NULL,
  last_name varchar(45) DEFAULT NULL,
  email varchar(45) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;