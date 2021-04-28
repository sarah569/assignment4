-- 1
CREATE DATABASE store_management;

--2
CREATE TABLE governorates (
id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
name VARCHAR(255) NOT NULL,
PRIMARY KEY(id)
);

INSERT INTO governorates (name)
VALUES ('alexandria'),('aswan'),('asyut'),('beheira'),('beni suef'),('cairo'),('dakahlia'),('damietta'),('faiyoum'),('gharbia'),
('giza'),('ismailia'),('kafr el sheikh'),('luxor'),('matruh'),('minya'),('monufia'),('new valley'),('north sinai'),('port said'),
('qalyubia'),('qena'),('red sea'),('sharqia'),('sohag'),('south sinai'),('suez');


--3
CREATE TABLE stores (
id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
name VARCHAR(255) NOT NULL,
address VARCHAR(255) NOT NULL,
PRIMARY KEY(id)
);

INSERT INTO stores (name,address)
VALUES ('store1','address1'),('store2','address2'),('store3','address3'),('store4','address4'),('store5','address5'),('store6','address6'),
('store7','address7'),('store8','address8'),('store9','address9'),('store10','address10'),('store11','address11'),('store12','address12'),
('store13','address13'),('store14','address14'),('store15','address15'),('store16','address16'),('store17','address17'),('store18','address18'),
('store19','address19'),('store20','address20'),('store21','address21'),('store22','address22'),('store23','address23'),('store24','address24'),
('store25','address25'),('store26','address26'),('store27','address27');

--5,8
CREATE TABLE suppliers (
id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
name VARCHAR(255) NOT NULL,
phone INTEGER NOT NULL,
email VARCHAR(255) NOT NULL UNIQUE,
brief_data TEXT NOT NULL,
PRIMARY KEY(id),
FOREIGN KEY(id) REFERENCES products(id)
);

--6
CREATE TABLE products (
id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
name VARCHAR(255) NOT NULL,
code VARCHAR(255) NOT NULL UNIQUE,
description VARCHAR(255) NOT NULL,
price INTEGER NOT NULL,
PRIMARY KEY(id)
);



--7
CREATE TABLE governorates_stores (
id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
PRIMARY KEY(id),
FOREIGN KEY(id) REFERENCES governorates(id), 
FOREIGN KEY(id) REFERENCES stores(id));

