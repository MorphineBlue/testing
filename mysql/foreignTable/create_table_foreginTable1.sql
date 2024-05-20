CREATE TABLE foreignTable1(
	cid int PRIMARY KEY auto_increment,
	c_name char(20),
	constraint pid foreign key (cid) references mainTable(id)
)ENGINE = INNODB, default charset = utf8;