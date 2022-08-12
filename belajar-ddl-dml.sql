Setting environment for using XAMPP for Windows.
Kjn93@DESKTOP-69ESDLP c:\xampp
# mysql -u root -p
Enter password:
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 9
Server version: 10.4.24-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| phpmyadmin         |
| pikni              |
| sekolah            |
| shabyan            |
| test               |
+--------------------+
8 rows in set (0.001 sec)

MariaDB [(none)]> USE sekolah;
Database changed
MariaDB [sekolah]> create table siswa(nis CHAR(8)primary key, nama VARCHAR(100), jk CHAR(1), tmp_lahir VARCHAR(50), tgl_lahir DATE, alamat TEXT, kelas VARCHAR(10), nilai FLOAT);
Query OK, 0 rows affected (0.022 sec)

MariaDB [sekolah]> SHOW TABLES;
+-------------------+
| Tables_in_sekolah |
+-------------------+
| siswa             |
+-------------------+
1 row in set (0.001 sec)

MariaDB [sekolah]> SELECT * FROM siswa;
Empty set (0.009 sec)

MariaDB [sekolah]> DESCRIBE siswa;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| nis       | char(8)      | NO   | PRI | NULL    |       |
| nama      | varchar(100) | YES  |     | NULL    |       |
| jk        | char(1)      | YES  |     | NULL    |       |
| tmp_lahir | varchar(50)  | YES  |     | NULL    |       |
| tgl_lahir | date         | YES  |     | NULL    |       |
| alamat    | text         | YES  |     | NULL    |       |
| kelas     | varchar(10)  | YES  |     | NULL    |       |
| nilai     | float        | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
8 rows in set (0.013 sec)

MariaDB [sekolah]> INSERT INTO siswa values ('12100022', 'AEF ADITA GELAR NUGRAHA', 'L', 'TONGGOH', '2005-11-07', 'BANDUNG', '11-RPL-1', '72.05');
Query OK, 1 row affected (0.006 sec)

MariaDB [sekolah]> INSERT INTO siswa values ('12100053', 'ALYA ELIDHIYA', 'L', 'PRUAWAKARTA', '2006-07-15', 'SUBANG', '11-RPL-1', '78');
Query OK, 1 row affected (0.003 sec)

MariaDB [sekolah]> UPDATE siswa SET jk = "p" WHERE nis = "12100053";
Query OK, 1 row affected (0.009 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [sekolah]>  INSERT INTO siswa values ('12100086', 'ARIEZTO ZUCOV', 'L', 'SUBANG', '2006-07-15', 'PAGADEN', '11-RPL-1', '78');
Query OK, 1 row affected (0.001 sec)

MariaDB [sekolah]>  INSERT INTO siswa values ('12100095', 'ARZENA HAQI MUHAMMAD', 'L', 'SUBANG', '2006-07-15', 'PAGADEN', '11-RPL-1', '72');
Query OK, 1 row affected (0.003 sec)

MariaDB [sekolah]>  INSERT INTO siswa values ('12100098', 'ASEP RIZKI JULIANSAH', 'L', 'KALIJATI', '2006-07-15', 'MAREMANG', '11-RPL-1', '76');
Query OK, 1 row affected (0.002 sec)

MariaDB [sekolah]>  INSERT INTO siswa values ('12100148', 'DAVID LUTFI', 'L', 'PAGADEN', '2006-07-15', 'SUBANG', '11-RPL-1', '72.05');
Query OK, 1 row affected (0.003 sec)

MariaDB [sekolah]> SELECT *FROM siswa;
+----------+-----------------------------+------+-------------+------------+----------+----------+-------+
| nis      | nama                        | jk   | tmp_lahir   | tgl_lahir  | alamat   | kelas    | nilai |
+----------+-----------------------------+------+-------------+------------+----------+----------+-------+
| 12100022 | AEF ADITA GELAR NUGRAHA     | L    | TONGGOH     | 2005-11-07 | BANDUNG  | 11-RPL-1 | 72.05 |
| 12100053 | ALYA ELIDHIYA               | p    | PRUAWAKARTA | 2006-07-15 | SUBANG   | 11-RPL-1 |    78 |
| 12100086 | ARIEZTO ZUCOV               | L    | SUBANG      | 2006-07-15 | PAGADEN  | 11-RPL-1 |    78 |
| 12100095 | ARZENA HAQI MUHAMMAD        | L    | SUBANG      | 2006-07-15 | PAGADEN  | 11-RPL-1 |    72 |
| 12100098 | ASEP RIZKI JULIANSAH        | L    | KALIJATI    | 2006-07-15 | MAREMANG | 11-RPL-1 |    76 |
| 12100148 | DAVID LUTFI                 | L    | PAGADEN     | 2006-07-15 | SUBANG   | 11-RPL-1 | 72.05 |
| 12100276 | FIRDAUS WIGUNA              | L    | KALIJATI    | 2005-09-05 | SUBANG   | 11-RPL-1 |    72 |
| 12100725 | SHABYAN DWI JUAN ARDIANSYAH | L    | BANDUNG     | 2006-06-06 | kalijat  | 11-RPL-1 |    75 |
| 12100823 | WANANDA DILLA ZAHRA         | P    | SUBANG      | 2006-08-12 | DAWUAN   | 11-RPL-1 |    90 |
| 12100987 | MUTHIA ZAHRA RUKMANA        | P    | SUBANG      | 2006-06-06 | PALASARI | 11-RPL-1 |    80 |
+----------+-----------------------------+------+-------------+------------+----------+----------+-------+
10 rows in set (0.001 sec)

MariaDB [sekolah]> UPDATE siswa SET tgl_lahir = "2006-04-13" WHERE nis = "12100086";
Query OK, 1 row affected (0.003 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [sekolah]> UPDATE siswa SET tgl_lahir = "2006-02-14" WHERE nis = "12100095";
Query OK, 1 row affected (0.005 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [sekolah]> UPDATE siswa SET tgl_lahir = "2006-05-24" WHERE nis = "12100098";
Query OK, 1 row affected (0.002 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [sekolah]> UPDATE siswa SET tgl_lahir = "2006-07-03" WHERE nis = "12100148";
Query OK, 1 row affected (0.003 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [sekolah]> SELECT * FROM siswa;
+----------+-----------------------------+------+-------------+------------+----------+----------+-------+
| nis      | nama                        | jk   | tmp_lahir   | tgl_lahir  | alamat   | kelas    | nilai |
+----------+-----------------------------+------+-------------+------------+----------+----------+-------+
| 12100022 | AEF ADITA GELAR NUGRAHA     | L    | TONGGOH     | 2005-11-07 | BANDUNG  | 11-RPL-1 | 72.05 |
| 12100053 | ALYA ELIDHIYA               | p    | PRUAWAKARTA | 2006-07-15 | SUBANG   | 11-RPL-1 |    78 |
| 12100086 | ARIEZTO ZUCOV               | L    | SUBANG      | 2006-04-13 | PAGADEN  | 11-RPL-1 |    78 |
| 12100095 | ARZENA HAQI MUHAMMAD        | L    | SUBANG      | 2006-02-14 | PAGADEN  | 11-RPL-1 |    72 |
| 12100098 | ASEP RIZKI JULIANSAH        | L    | KALIJATI    | 2006-05-24 | MAREMANG | 11-RPL-1 |    76 |
| 12100148 | DAVID LUTFI                 | L    | PAGADEN     | 2006-07-03 | SUBANG   | 11-RPL-1 | 72.05 |
| 12100276 | FIRDAUS WIGUNA              | L    | KALIJATI    | 2005-09-05 | SUBANG   | 11-RPL-1 |    72 |
| 12100725 | SHABYAN DWI JUAN ARDIANSYAH | L    | BANDUNG     | 2006-06-06 | kalijat  | 11-RPL-1 |    75 |
| 12100823 | WANANDA DILLA ZAHRA         | P    | SUBANG      | 2006-08-12 | DAWUAN   | 11-RPL-1 |    90 |
| 12100987 | MUTHIA ZAHRA RUKMANA        | P    | SUBANG      | 2006-06-06 | PALASARI | 11-RPL-1 |    80 |
+----------+-----------------------------+------+-------------+------------+----------+----------+-------+
10 rows in set (0.001 sec)

MariaDB [sekolah]> INSERT INTO siswa values ('12100217', 'EBEN HEZE WANGSA DJAA', 'L', 'KALIJATI', '2006-07-28', 'SUDIMAMPIR', '11-RPL-1', '87');
Query OK, 1 row affected (0.003 sec)

MariaDB [sekolah]> INSERT INTO siswa values ('12100218', 'EGAN WIRYAWAN', 'L', 'SUBANG', '2006-08-08', 'WANGERJA', '11-RPL-1', '76.05');
Query OK, 1 row affected (0.004 sec)

MariaDB [sekolah]> INSERT INTO siswa values ('12100219', 'EGI RENALDI', 'L', 'GARUT', '2006-02-02', 'KARAWANG', '11-RPL-1', '78');
Query OK, 1 row affected (0.003 sec)

MariaDB [sekolah]> INSERT INTO siswa values ('12100236', 'EPI HALIMAH', 'P', 'BEKASI', '2006-12-17', 'TONGGOH', '11-RPL-1', '82');
Query OK, 1 row affected (0.003 sec)

MariaDB [sekolah]> INSERT INTO siswa values ('12100249', 'FADHL GAVINDAFFA ABDULLAH', 'L', 'DAWUAN', '2006-12-17', 'SINGAPORE', '11-RPL-1', '79');
Query OK, 1 row affected (0.001 sec)

MariaDB [sekolah]> INSERT INTO siswa values ('12100268', 'FARIZ FADLI RAFIUDIN', 'L', 'JOGJA', '2006-12-17', 'SUBANG', '11-RPL-1', '80');
Query OK, 1 row affected (0.003 sec)

MariaDB [sekolah]> INSERT INTO siswa values ('12100281', 'GALIH AKBAR MAUKANA', 'L', 'TANGGERANG', '2006-02-17', 'CIJAMBE', '11-RPL-1', '81');
Query OK, 1 row affected (0.003 sec)

MariaDB [sekolah]> UPDATE siswa SET tgl_lahir = "2006-04-16" WHERE nis = "12100268";
Query OK, 1 row affected (0.003 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [sekolah]> SELECT * FROM siswa;
+----------+-----------------------------+------+-------------+------------+------------+----------+-------+
| nis      | nama                        | jk   | tmp_lahir   | tgl_lahir  | alamat     | kelas    | nilai |
+----------+-----------------------------+------+-------------+------------+------------+----------+-------+
| 12100022 | AEF ADITA GELAR NUGRAHA     | L    | TONGGOH     | 2005-11-07 | BANDUNG    | 11-RPL-1 | 72.05 |
| 12100053 | ALYA ELIDHIYA               | p    | PRUAWAKARTA | 2006-07-15 | SUBANG     | 11-RPL-1 |    78 |
| 12100086 | ARIEZTO ZUCOV               | L    | SUBANG      | 2006-04-13 | PAGADEN    | 11-RPL-1 |    78 |
| 12100095 | ARZENA HAQI MUHAMMAD        | L    | SUBANG      | 2006-02-14 | PAGADEN    | 11-RPL-1 |    72 |
| 12100098 | ASEP RIZKI JULIANSAH        | L    | KALIJATI    | 2006-05-24 | MAREMANG   | 11-RPL-1 |    76 |
| 12100148 | DAVID LUTFI                 | L    | PAGADEN     | 2006-07-03 | SUBANG     | 11-RPL-1 | 72.05 |
| 12100217 | EBEN HEZE WANGSA DJAA       | L    | KALIJATI    | 2006-07-28 | SUDIMAMPIR | 11-RPL-1 |    87 |
| 12100218 | EGAN WIRYAWAN               | L    | SUBANG      | 2006-08-08 | WANGERJA   | 11-RPL-1 | 76.05 |
| 12100219 | EGI RENALDI                 | L    | GARUT       | 2006-02-02 | KARAWANG   | 11-RPL-1 |    78 |
| 12100236 | EPI HALIMAH                 | P    | BEKASI      | 2006-12-17 | TONGGOH    | 11-RPL-1 |    82 |
| 12100249 | FADHL GAVINDAFFA ABDULLAH   | L    | DAWUAN      | 2006-12-17 | SINGAPORE  | 11-RPL-1 |    79 |
| 12100268 | FARIZ FADLI RAFIUDIN        | L    | JOGJA       | 2006-04-16 | SUBANG     | 11-RPL-1 |    80 |
| 12100276 | FIRDAUS WIGUNA              | L    | KALIJATI    | 2005-09-05 | SUBANG     | 11-RPL-1 |    72 |
| 12100281 | GALIH AKBAR MAUKANA         | L    | TANGGERANG  | 2006-02-17 | CIJAMBE    | 11-RPL-1 |    81 |
| 12100725 | SHABYAN DWI JUAN ARDIANSYAH | L    | BANDUNG     | 2006-06-06 | kalijat    | 11-RPL-1 |    75 |
| 12100823 | WANANDA DILLA ZAHRA         | P    | SUBANG      | 2006-08-12 | DAWUAN     | 11-RPL-1 |    90 |
| 12100987 | MUTHIA ZAHRA RUKMANA        | P    | SUBANG      | 2006-06-06 | PALASARI   | 11-RPL-1 |    80 |
+----------+-----------------------------+------+-------------+------------+------------+----------+-------+
17 rows in set (0.001 sec)

MariaDB [sekolah]> INSERT INTO siswa values ('12100307', 'HASBI DHIYA FARHANSYAH', 'L', 'Subang', '2005-07-30', 'pagaden', '11-RPL-1', '78');
Query OK, 1 row affected (0.002 sec)

ariaDB [sekolah]> UPDATE  siswa SET tmp_lahir = "SUBANG" WHERE nis = "12100293";
Query OK, 1 row affected (0.001 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [sekolah]> UPDATE  siswa SET alamat = "SUBANG" WHERE nis = "12100293";
Query OK, 1 row affected (0.004 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [sekolah]> UPDATE  siswa SET alamat = "PAGADEN" WHERE nis = "12100307";
Query OK, 1 row affected (0.003 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [sekolah]> UPDATE  siswa SET tmp_lahir = "SUBANG" WHERE nis = "12100307";
Query OK, 1 row affected (0.003 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [sekolah]> UPDATE  siswa SET alamat = "KALIJATI" WHERE nis = "12100725";
Query OK, 1 row affected (0.003 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [sekolah]> INSERT INTO siswa values ('12100340', 'IQQBAL NAUFALHAKIM', 'L', 'SUBANG', '2005-11-05', 'CIBINONG', '11-RPL-1', '76');
Query OK, 1 row affected (0.006 sec)

MariaDB [sekolah]> INSERT INTO siswa values ('12100362', 'KARTIKA SARIDEWI', 'L', 'SUBANG', '2006-03-17', 'SUBANG', '11-RPL-1', '82');
Query OK, 1 row affected (0.002 sec)

MariaDB [sekolah]> INSERT INTO siswa values ('12100410', 'M IKBAL SYAPHPUTRA', 'L', 'MAKASAR', '2006-06-23', 'SUBANG', '11-RPL-1', '75');
Query OK, 1 row affected (0.003 sec)

MariaDB [sekolah]> UPDATE siswa SET jk = "p" WHERE nis = "12100362";
Query OK, 1 row affected (0.003 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [sekolah]> INSERT INTO siswa values ('12100419', 'M DZAKY FIRDAUS', 'L', 'TANGGERANG', '2006-07-20', 'CIGADUNG', '11-RPL-1', '85');
Query OK, 1 row affected (0.003 sec)

MariaDB [sekolah]> INSERT INTO siswa values ('12100452', 'MOHAMAD INDRA ERDIN', 'L', 'AUSTRALIA', '2006-08-27', 'PAGADEN', '11-RPL-1', '80');
Query OK, 1 row affected (0.003 sec)

MariaDB [sekolah]> INSERT INTO siswa values ('12100476', 'MUHAMAD WAHYUDIN SYAWALI', 'L', 'CIKAMPEK', '2005-11-14', 'CIJAMBE', '11-RPL-1', '73');
Query OK, 1 row affected (0.003 sec)

MariaDB [sekolah]> INSERT INTO siswa values ('12100531', 'NAZWA ANGGINA', 'P', 'PRUAWADAI', '2006-10-01', 'DAWUAN', '11-RPL-1', '80');
Query OK, 1 row affected (0.002 sec)

MariaDB [sekolah]> INSERT INTO siswa values ('12100563', 'NURUL EKA MARYANA', 'P', 'LEMBANG', '2006-10-01', 'CIBENYING', '11-RPL-1', '84');
Query OK, 1 row affected (0.001 sec)

MariaDB [sekolah]> INSERT INTO siswa values ('12100614', 'RENALDI NURMAZID', 'L', 'DAWUAN', '2006-03-21', 'WANGERJA', '11-RPL-1', '80');
Query OK, 1 row affected (0.003 sec)

MariaDB [sekolah]> UPDATE siswa SET tgl_lahir = "2006-02-08" WHERE nis = "12100563";
Query OK, 1 row affected (0.003 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [sekolah]> INSERT INTO siswa values ('12100662', 'RIZKI GIANT SEPANGGA', 'L', 'SUBANG', '2006-10-10', 'CIGADUNG', '11-RPL-1', '78');
Query OK, 1 row affected (0.003 sec)

MariaDB [sekolah]> INSERT INTO siswa values ('12100670', 'RIZQI CATUR MADANI', 'L', 'LOMBOK', '2006-08-06', 'KOREA', '11-RPL-1', '80');
Query OK, 1 row affected (0.005 sec)

MariaDB [sekolah]> INSERT INTO siswa values ('12100673', 'ROFI ANUGRAH FIRDAUS', 'L', 'CHINA', '2006-08-06', 'KARAWANG', '11-RPL-1', '77');
Query OK, 1 row affected (0.002 sec)

MariaDB [sekolah]> INSERT INTO siswa values ('12100700', 'SANDI ADI PRATAMA', 'L', 'MESIR', '2006-01-12', 'PAGADEN', '11-RPL-1', '75');
Query OK, 1 row affected (0.003 sec)

MariaDB [sekolah]> UPDATE siswa SET tgl_lahir = "2006-06-03" WHERE nis = "12100673";
Query OK, 1 row affected (0.003 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [sekolah]> INSERT INTO siswa values ('12100714', 'SELLY RIZKY APRILIA', 'P', 'THAILAND', '2006-01-12', 'KOREA UTARA', '11-RPL-1', '85');
Query OK, 1 row affected (0.003 sec)

MariaDB [sekolah]> UPDATE siswa SET tgl_lahir = "2006-03-28" WHERE nis = "12100714";
Query OK, 1 row affected (0.002 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [sekolah]> INSERT INTO siswa values ('12100778', 'TASYA AMELIA', 'P', 'KOREA', '2006-12-19', 'KOREA', '11-RPL-1', '85');
Query OK, 1 row affected (0.002 sec)

MariaDB [sekolah]> INSERT INTO siswa values ('12100848', 'YUFA GINA MARYAFA', 'P', 'CIJOGED', '2006-11-18', 'KOREA', '11-RPL-1', '85');
Query OK, 1 row affected (0.003 sec)

MariaDB [sekolah]> INSERT INTO siswa values ('12100864', 'ZUNADEA KUSMIANDITA SUNTORO', 'L', 'SUBANG', '2006-07-03', 'TANGGERANG', '11-RPL-1', '82');
Query OK, 1 row affected (0.003 sec)

MariaDB [sekolah]> SELECT * FROM siswa;
+----------+-----------------------------+------+-------------+------------+-------------+----------+-------+
| nis      | nama                        | jk   | tmp_lahir   | tgl_lahir  | alamat      | kelas    | nilai |
+----------+-----------------------------+------+-------------+------------+-------------+----------+-------+
| 12100022 | AEF ADITA GELAR NUGRAHA     | L    | TONGGOH     | 2005-11-07 | BANDUNG     | 11-RPL-1 | 72.05 |
| 12100053 | ALYA ELIDHIYA               | p    | PRUAWAKARTA | 2006-07-15 | SUBANG      | 11-RPL-1 |    78 |
| 12100086 | ARIEZTO ZUCOV               | L    | SUBANG      | 2006-04-13 | PAGADEN     | 11-RPL-1 |    78 |
| 12100095 | ARZENA HAQI MUHAMMAD        | L    | SUBANG      | 2006-02-14 | PAGADEN     | 11-RPL-1 |    72 |
| 12100098 | ASEP RIZKI JULIANSAH        | L    | KALIJATI    | 2006-05-24 | MAREMANG    | 11-RPL-1 |    76 |
| 12100148 | DAVID LUTFI                 | L    | PAGADEN     | 2006-07-03 | SUBANG      | 11-RPL-1 | 72.05 |
| 12100217 | EBEN HEZE WANGSA DJAA       | L    | KALIJATI    | 2006-07-28 | SUDIMAMPIR  | 11-RPL-1 |    87 |
| 12100218 | EGAN WIRYAWAN               | L    | SUBANG      | 2006-08-08 | WANGERJA    | 11-RPL-1 | 76.05 |
| 12100219 | EGI RENALDI                 | L    | GARUT       | 2006-02-02 | KARAWANG    | 11-RPL-1 |    78 |
| 12100236 | EPI HALIMAH                 | P    | BEKASI      | 2006-12-17 | TONGGOH     | 11-RPL-1 |    82 |
| 12100249 | FADHL GAVINDAFFA ABDULLAH   | L    | DAWUAN      | 2006-12-17 | SINGAPORE   | 11-RPL-1 |    79 |
| 12100268 | FARIZ FADLI RAFIUDIN        | L    | JOGJA       | 2006-04-16 | SUBANG      | 11-RPL-1 |    80 |
| 12100276 | FIRDAUS WIGUNA              | L    | KALIJATI    | 2005-09-05 | SUBANG      | 11-RPL-1 |    72 |
| 12100281 | GALIH AKBAR MAUKANA         | L    | TANGGERANG  | 2006-02-17 | CIJAMBE     | 11-RPL-1 |    81 |
| 12100293 | HAIKAI FADHILAH IBRAHIM     | L    | SUBANG      | 2005-11-07 | SUBANG      | 11-RPL-1 |    77 |
| 12100307 | HASBI DHIYA FARHANSYAH      | L    | SUBANG      | 2005-07-30 | PAGADEN     | 11-RPL-1 |    78 |
| 12100340 | IQQBAL NAUFALHAKIM          | L    | SUBANG      | 2005-11-05 | CIBINONG    | 11-RPL-1 |    76 |
| 12100362 | KARTIKA SARIDEWI            | p    | SUBANG      | 2006-03-17 | SUBANG      | 11-RPL-1 |    82 |
| 12100410 | M IKBAL SYAPHPUTRA          | L    | MAKASAR     | 2006-06-23 | SUBANG      | 11-RPL-1 |    75 |
| 12100419 | M DZAKY FIRDAUS             | L    | TANGGERANG  | 2006-07-20 | CIGADUNG    | 11-RPL-1 |    85 |
| 12100452 | MOHAMAD INDRA ERDIN         | L    | AUSTRALIA   | 2006-08-27 | PAGADEN     | 11-RPL-1 |    80 |
| 12100476 | MUHAMAD WAHYUDIN SYAWALI    | L    | CIKAMPEK    | 2005-11-14 | CIJAMBE     | 11-RPL-1 |    73 |
| 12100531 | NAZWA ANGGINA               | P    | PRUAWADAI   | 2006-10-01 | DAWUAN      | 11-RPL-1 |    80 |
| 12100563 | NURUL EKA MARYANA           | P    | LEMBANG     | 2006-02-08 | CIBENYING   | 11-RPL-1 |    84 |
| 12100614 | RENALDI NURMAZID            | L    | DAWUAN      | 2006-03-21 | WANGERJA    | 11-RPL-1 |    80 |
| 12100662 | RIZKI GIANT SEPANGGA        | L    | SUBANG      | 2006-10-10 | CIGADUNG    | 11-RPL-1 |    78 |
| 12100670 | RIZQI CATUR MADANI          | L    | LOMBOK      | 2006-08-06 | KOREA       | 11-RPL-1 |    80 |
| 12100673 | ROFI ANUGRAH FIRDAUS        | L    | CHINA       | 2006-06-03 | KARAWANG    | 11-RPL-1 |    77 |
| 12100700 | SANDI ADI PRATAMA           | L    | MESIR       | 2006-01-12 | PAGADEN     | 11-RPL-1 |    75 |
| 12100714 | SELLY RIZKY APRILIA         | P    | THAILAND    | 2006-03-28 | KOREA UTARA | 11-RPL-1 |    85 |
| 12100725 | SHABYAN DWI JUAN ARDIANSYAH | L    | BANDUNG     | 2006-06-06 | KALIJATI    | 11-RPL-1 |    75 |
| 12100778 | TASYA AMELIA                | P    | KOREA       | 2006-12-19 | KOREA       | 11-RPL-1 |    85 |
| 12100823 | WANANDA DILLA ZAHRA         | P    | SUBANG      | 2006-08-12 | DAWUAN      | 11-RPL-1 |    90 |
| 12100848 | YUFA GINA MARYAFA           | P    | CIJOGED     | 2006-11-18 | KOREA       | 11-RPL-1 |    85 |
| 12100864 | ZUNADEA KUSMIANDITA SUNTORO | L    | SUBANG      | 2006-07-03 | TANGGERANG  | 11-RPL-1 |    82 |
| 12100987 | MUTHIA ZAHRA RUKMANA        | P    | SUBANG      | 2006-06-06 | PALASARI    | 11-RPL-1 |    80 |
+----------+-----------------------------+------+-------------+------------+-------------+----------+-------+
36 rows in set (0.001 sec)