

################################################################################
Import data to mysql from file 
#################################################################################

[root@OELMother ~]# ls mboo-database/
README.txt  table.sql  videos.txt
[root@OELMother ~]# cd !$
cd mboo-database/
[root@OELMother mboo-database]# cp videos.txt /tmp
[root@OELMother mboo-database]# mysql -p
Enter password: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 48
Server version: 5.0.77 Source distribution

Type 'help;' or '\h' for help. Type '\c' to clear the buffer.

mysql> source table.sql
Query OK, 1 row affected (0.00 sec)

Database changed
Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.01 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

mysql> load data infile '/tmp/videos.txt' into table videos (vid, tid, kid,
pvid, nvid, title, tag)  set pubdt = CURDATE() ;
Query OK, 76 rows affected (0.00 sec)
Records: 76  Deleted: 0  Skipped: 0  Warnings: 0

mysql> 
