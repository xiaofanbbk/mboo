create database if not exists videos ;
use videos;
create table if not exists videos ( 
	vid char(13) NOT NULL,
	tid char(11) NOT NULL,
	kid char(13) NOT NULL, 
	pvid char(13),
	nvid char(13),
	pubdt date NOT NULL ,
	title varchar(300) NOT NULL , 
	summary varchar(2000) ,
	price decimal(3,2) UNSIGNED default '1.00',
	tag char(100), 
	size char(8) NOT NULL default 'S',
	doclist varchar(200) , 
	download int(10) NOT NULL default '0',
	PRIMARY KEY (vid)
) ENGINE=MyISAM  DEFAULT CHARSET=gb2312;



create table if not exists tutors (
	 tid char(11) NOT NULL,
	 zfb varchar(100), 
	 paypal varchar(100), 
	 ename varchar(100), 
	 rname varchar(32), 
	 QQ varchar(64), 
	 MSN varchar(64), 
	 SKYPE char(64), 
	 address varchar(200), 
	 money decimal(12,2) UNSIGNED default '0',
	 PRIMARY KEY (tid)
) ENGINE=MyISAM DEFAULT CHARSET=gb2312;



create table if not exists videolist ( 
	 lid char(13) NOT NULL,
	 count tinyint(1) UNSIGNED NOT NULL,
	 tid0 char(11) NOT NULL, 
	 tid1 char(11), 
	 tid2 char(11), 
	 fvid char(13) NOT NULL, 
	 title varchar(200) NOT NULL, 
	 summary varchar(2000) , 
	 price decimal(5.2) UNSIGNED  NOT NULL,
	 PRIMARY KEY (lid)
) ENGINE=MyISAM DEFAULT CHARSET=gb2312;


create table if not exists videocomment (
	 vid char(13) NOT NULL, 
	 name varchar(32) NOT NULL, 
	 ip varchar(32), 
	 commnet varchar(400) NOT NULL
) DEFAULT CHARSET=gb2312;



create table if not exists knowledge ( 
	kid char(13) NOT NULL, 
	name varchar(200) NOT NULL, 
	pkid char(13)  
)ENGINE=MyISAM  DEFAULT CHARSET=gb2312;


create table if not exists users( 
	uid mediumint(8) UNSIGNED NOT NULL  auto_increment, 
	username char(15) NOT NULL, 
	password char(15) NOT NULL, 
	email char(32) NOT NULL, 
	regdate int(10) UNSIGNED NOT NULL, 
	lastip int(10) , 
	lastvisit date,
 	PRIMARY KEY (uid)
) ENGINE=MyISAM DEFAULT CHARSET=gb2312;



create table if not exists downloads ( 
	flowid mediumint(8) NOT NULL AUTO_INCREMENT, 
	uid mediumint(8) UNSIGNED NOT NULL, 
	vid char(13) NOT NULL, 
	dt timestamp NOT NULL default CURRENT_TIMESTAMP , 
	ip char(32), 
	PRIMARY KEY (flowid) 
)ENGINE=MyISAM  DEFAULT CHARSET=gb2312;



create table if not exists loginhistory ( 
	flowid mediumint(8) NOT NULL auto_increment, 
	uid mediumint(8) unsigned NOT NULL, 
	dt1 timestamp NOT NULL default CURRENT_TIMESTAMP , 
	dt2 timestamp, 
	ip char(32), 
	PRIMARY KEY(flowid)
) ENGINE=MyISAM DEFAULT CHARSET=gb2312;



create table if not exists search (
	 flowid mediumint(8) NOT NULL  auto_increment, 
         uid mediumint(8) UNSIGNED NOT NULL , 
	 keywords char(100), 	
	 dt timestamp NOT NULL default CURRENT_TIMESTAMP , 
	 ip char(32), 
	 PRIMARY KEY (flowid)
) ENGINE=MyISAM DEFAULT CHARSET=gb2312;








insert into videolist(lid, count, tid0, fvid, title, price) values ('LST1', 76, 'T1', 'bbk1109', 'ORACLE 9I Fundamentals I',76 );
insert into tutors(tid, ename,  QQ ) values ('T1', 'wilson', '542453655');
