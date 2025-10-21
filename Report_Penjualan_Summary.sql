-- EKSEKUSI DASAR LAPORAN PENJUALAN -- 

-- LAPORAN PENJUALAN HARIAN --
SELECT 
    DATE(t.Tanggal_Transaksi) AS tanggal,
    SUM(t.Total_Harga) AS total_penjualan
FROM transaksi t
GROUP BY tanggal
ORDER BY tanggal;
 
 -- LAPORAN PENJUALAN MINGGUAN --
 SELECT 
    YEAR(t.Tanggal_Transaksi) AS tahun,
    WEEK(t.Tanggal_Transaksi, 1) AS minggu,
    SUM(t.Total_Harga) AS total_penjualan
FROM transaksi t
GROUP BY tahun, minggu
ORDER BY tahun, minggu;

-- LAPORAN PENJUALAN BULANAN
SELECT 
    YEAR(t.Tanggal_Transaksi) AS tahun,
    MONTH(t.Tanggal_Transaksi) AS bulan,
    SUM(t.Total_Harga) AS total_penjualan
FROM transaksi t
GROUP BY tahun, bulan
ORDER BY tahun, bulan;

-- PRODUK TERLARIS TOP 10 --
SELECT 
    p.Nama_Produk, 
    SUM(t.Jumlah) AS total_terjual
FROM transaksi t
JOIN produk p ON t.Id_Produk = p.Id_Produk
GROUP BY p.Nama_Produk
ORDER BY total_terjual DESC
LIMIT 10;

-- PRODUK TERLARIS PER KATEGORI --
SELECT 
    p.Kategori,
    SUM(t.Jumlah) AS total_terjual,
    SUM(t.Total_Harga) AS total_penjualan
FROM transaksi t
JOIN produk p ON t.Id_Produk = p.Id_Produk
GROUP BY p.Kategori
ORDER BY total_penjualan DESC;

-- PENJUALAN BERDASARKAN PELANGGAN TERBANYAK -- 
SELECT 
    pel.Nama,
    COUNT(t.Id_Transaksi) AS jumlah_transaksi,
    SUM(t.Total_Harga) AS total_belanja
FROM transaksi t
JOIN pelanggan pel ON t.Id_Pelanggan = pel.Id_Pelanggan
GROUP BY pel.Nama
ORDER BY total_belanja DESC
LIMIT 50000;

-- PENJUALAN BERDASARKAN KOTA --
SELECT 
    pel.Kota,
    SUM(t.Total_Harga) AS total_penjualan
FROM transaksi t
JOIN pelanggan pel ON t.Id_Pelanggan = pel.Id_Pelanggan
GROUP BY pel.Kota
ORDER BY total_penjualan DESC;
