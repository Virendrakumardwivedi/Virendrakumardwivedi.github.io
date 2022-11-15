Enter password: ********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 35
Server version: 8.0.30 MySQL Community Server - GPL

Copyright (c) 2000, 2022, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| db1                |
| information_schema |
| jdbcdb             |
| mysql              |
| performance_schema |
| sakila             |
| sb101db            |
| sys                |
| world              |
+--------------------+
9 rows in set (0.16 sec)

mysql> use db1
Database changed
mysql> create table  ABCdatabase;
ERROR 4028 (HY000): A table must have at least one visible column.
mysql> create table  ABCdatabase(
    -> Rollno int primary key,
    -> StudentName varchar(20) Not Null,
    -> Standard Varchar (2) Not Null,
    -> Date_Of_Birth Date,
    -> Fees int);
Query OK, 0 rows affected (0.21 sec)

mysql> desc ABCdatabase;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| Rollno        | int         | NO   | PRI | NULL    |       |
| StudentName   | varchar(20) | NO   |     | NULL    |       |
| Standard      | varchar(2)  | NO   |     | NULL    |       |
| Date_Of_Birth | date        | YES  |     | NULL    |       |
| Fees          | int         | YES  |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
5 rows in set (0.04 sec)

mysql> select * from student;
ERROR 1146 (42S02): Table 'db1.student' doesn't exist
mysql> select * from ABCdatabase;
+--------+-------------+----------+---------------+------+
| Rollno | StudentName | Standard | Date_Of_Birth | Fees |
+--------+-------------+----------+---------------+------+
|   1111 | ram         | 12       | NULL          | 5000 |
+--------+-------------+----------+---------------+------+
1 row in set (0.01 sec)

mysql> select * from ABCdatabase;
+--------+-------------+----------+---------------+------+
| Rollno | StudentName | Standard | Date_Of_Birth | Fees |
+--------+-------------+----------+---------------+------+
|   1111 | ram         | 12       | NULL          | 5000 |
|   2222 | sham        | 12       | 2000-09-10    | 5000 |
+--------+-------------+----------+---------------+------+
2 rows in set (0.00 sec)

mysql> CREATE TABLE onlinecustomers (customerid INT PRIMARY KEY auto_increment ,CustomerName
    -> VARCHAR(100) ,CustomerCity VARCHAR(100) ,Customermail VARCHAR(100));
Query OK, 0 rows affected (0.29 sec)

mysql>  CREATE TABLE orders (orderId INT PRIMARY KEY auto_increment , customerid INT ,ordertotal
    -> float ,discountrate float ,orderdate DATETIME);
Query OK, 0 rows affected (0.03 sec)

mysql> CREATE TABLE sales (salesId INT PRIMARY KEY auto_increment,orderId INT ,salestotal FLOAT);
Query OK, 0 rows affected (0.03 sec)

mysql> select customerName, customercity, customermail, ordertotal from onlinecustomers inner join on orders on orders.customerid=onlinecustomers.customerid;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'on orders on orders.customerid=onlinecustomers.customerid' at line 1
mysql> select customerName, customercity, customermail, ordertotal from onlinecustomers inner join orders on orders.customerid=onlinecustomers.customerid;
Empty set (0.07 sec)

mysql> insert into E onlinecustomers (customerid INT PRIMARY KEY auto_increment ,CustomerName
    -> VARCHAR(100) ,CustomerCity VARCHAR(100) ,Customermail VARCHAR(100));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'onlinecustomers (customerid INT PRIMARY KEY auto_increment ,CustomerName
VARCHAR' at line 1
mysql> insert into onlinecustomers values(1 ,ram,sangamner,abs@skka.com);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '@skka.com)' at line 1
mysql> insert into onlinecustomers values(1 ,ram,sangamner","abs@skka.com");
    ">
    ">
    ">
    "> sisia
    "> sasas;
    "> ;
    "> ";
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '","abs@skka.com");



sisia
sasas;
;
"' at line 1
mysql> insert into onlinecustomers values(1 ,"ram","sangamner","abs@skka.com");
Query OK, 1 row affected (0.01 sec)

mysql> insert into onlinecustomers values(2 ,"sham","sangamner","abs@skka.com");
Query OK, 1 row affected (0.00 sec)

mysql> insert into orders values(12,2,null,null,null);
Query OK, 1 row affected (0.00 sec)

mysql> select customerName, customercity, customermail, ordertotal from onlinecustomers inner join orders on orders.customerid=onlinecustomers.customerid;
+--------------+--------------+--------------+------------+
| customerName | customercity | customermail | ordertotal |
+--------------+--------------+--------------+------------+
| sham         | sangamner    | abs@skka.com |       NULL |
+--------------+--------------+--------------+------------+
1 row in set (0.00 sec)

mysql> select customerName, customercity, customermail, ordertotal from onlinecustomers inner join orders on orders.customerid!=onlinecustomers.customerid;
+--------------+--------------+--------------+------------+
| customerName | customercity | customermail | ordertotal |
+--------------+--------------+--------------+------------+
| ram          | sangamner    | abs@skka.com |       NULL |
+--------------+--------------+--------------+------------+
1 row in set (0.01 sec)

mysql>