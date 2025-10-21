-- STEPH 1, PROSES MEMBUAT DATA BASE PERUSAHAAN

-- 1. PEMBUATAN TABLE PERUSAHAAN
CREATE TABLE perusahaan (
	Id_Perusahaan INT PRIMARY KEY AUTO_INCREMENT, 
    Nama_Perusahaan VARCHAR (255) NOT NULL,
    Alamat VARCHAR (255),
    Kota VARCHAR (225),
    Provinsi VARCHAR (255),
    Kode_Pos VARCHAR (255),
    Telepon VARCHAR (100),
    Email VARCHAR (100),
    Tanggal_Berdiri DATE,
    Jumlah_Karyawan INT,
    Jenis_Usaha VARCHAR (100)
);
  
-- 2. PEMUATAN TABEL PRODUK
CREATE TABLE produk (
	Id_Produk INT PRIMARY KEY AUTO_INCREMENT,
    Id_Perusahaan INT NOT NULL,
    Nama_Produk VARCHAR (255),
    Kategori VARCHAR (100),
    Harga DECIMAL (10, 2),
    Stok_Tersedia INT,
    FOREIGN KEY (Id_Perusahaan) REFERENCES perusahaan (Id_Perusahaan)
);

-- 3. PEMBUATAN TABEL PELANGGAN
CREATE TABLE Pelanggan (
	Id_Pelanggan INT PRIMARY KEY AUTO_INCREMENT,
    Nama VARCHAR (255) NOT NULL,
    Jenis_Kelamin VARCHAR (255),
    Tanggal_Lahir VARCHAR (255),
    Alamat VARCHAR (255),
    Kota VARCHAR (255),
    Telepon VARCHAR (255),
    Email VARCHAR (255) 
);

-- 4. PEMBUATAN TABLE TRANSAKSI
CREATE TABLE Transaksi (
	Id_Transaksi INT PRIMARY KEY AUTO_INCREMENT,
    Id_Pelanggan INT NOT NULL,
    Id_Produk INT NOT NULL,
    Id_Perusahaan INT NOT NULL,
    Jumlah INT,
    Total_Harga DECIMAL (10, 2),
    Metode_Pembayaran VARCHAR (100),
    Tanggal_Transaksi DATETIME,
    Status_Transaksi VARCHAR (100),
    
    FOREIGN KEY (Id_Pelanggan) REFERENCES pelanggan (Id_Pelanggan),
    FOREIGN KEY (Id_Produk) REFERENCES produk (Id_Produk)
);



































    
    
    
    
    
    
    
    
    
    
    
    
    
);