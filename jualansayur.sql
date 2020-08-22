DROP DATABASE IF EXISTS jualansayur;
CREATE DATABASE jualansayur;
USE jualansayur;

CREATE TABLE produk(
	idProduk INT PRIMARY KEY AUTO_INCREMENT,
	gambarProduk VARCHAR(50),
	namaProduk VARCHAR(100),
	harga INT
);

INSERT INTO produk VALUES
(1, '1.jpeg', 'sayur kol dengan varian warna', 80000),
(2, '2.jpeg', 'sayur Wortel dengan varian warna', 40000),
(3, '3.jpeg', 'Brokoli 1 kg' , 17000),
(4, '4.jpeg', 'Kol putih 1 kg' , 12000),
(5, '5.jpeg', 'Bayam Hijau 1 kg' , 10000),
(6, '6.jpeg', 'Pare 2 pcs' , 12000),
(7, '7.jpeg', 'Caisim 200 gr' , 13000),
(8, '8.jpeg', 'Kangkung 200 gr' , 11000),
(9, '9.jpeg', 'Jeruk 1 kg' , 17000),
(10, '10.jpeg', 'Strawberry 250 gr' , 23000),
(11, '11.jpeg', 'Apel 500 gr' , 20000),
(12, '12.jpeg', 'Alpukat 1 kg' , 23000),
(13, '13.jpeg', 'Nanas 500 gr' , 17000),
(14, '14.jpeg', 'Semangka 1 pcs' , 20000),
(15, '15.jpeg', 'Salak 500 gr' , 11000);

CREATE TABLE nota(
	idNota INT PRIMARY KEY AUTO_INCREMENT,
	username VARCHAR(50),
	tanggal DATE
);

CREATE TABLE notaPenjualan(
	idNotaPenjualan INT PRIMARY KEY AUTO_INCREMENT,
	idNota INT,
	idProduk INT,
	jumlahBarang INT,
	FOREIGN KEY (idNota)
		REFERENCES nota(idNota)
			ON DELETE CASCADE
);

CREATE TABLE keranjang(
	idKeranjang INT PRIMARY KEY AUTO_INCREMENT,
	idProduk INT,
	username VARCHAR(50),
	status VARCHAR(20)
);