# Implementasi Database & Analisis Penjualan Komprehensif untuk Perusahaan Kuliner

Proyek ini bertujuan untuk membangun dan mengelola basis data penjualan yang komprehensif untuk sebuah perusahaan kuliner, serta melakukan analisis data mendalam untuk mendukung pengambilan keputusan bisnis yang lebih baik. Kami menggunakan MySQL sebagai sistem manajemen basis data dan Python (didukung oleh Google Colab) untuk analisis data lanjutan.

## 🎯 Tujuan Proyek

1.  **Membangun Skema Database**: Mendesain dan mengimplementasikan skema database relasional yang efisien untuk menyimpan data perusahaan, pelanggan, produk, dan transaksi penjualan.
2.  **Validasi dan Integrasi Data**: Memastikan integritas dan akurasi data yang diimpor ke dalam database melalui berbagai proses validasi.
3.  **Eksplorasi Data Awal**: Melakukan eksplorasi data untuk mengidentifikasi pola, tren, dan wawasan awal dari data penjualan.
4.  **Generasi Laporan Penjualan**: Mengembangkan skrip SQL untuk menghasilkan laporan penjualan periodik (harian, mingguan, bulanan) yang relevan untuk kebutuhan bisnis.
5.  **Analisis Data Lanjutan**: Memanfaatkan Python di Google Colab untuk analisis statistik, visualisasi data, dan pemodelan prediktif guna mendapatkan pemahaman yang lebih dalam tentang performa penjualan.

## 📁 Struktur Repositori

*   `Code_Create_Table.sql`: Berisi definisi skema database SQL untuk tabel `perusahaan`, `pelanggan`, `produk`, dan `transaksi`, lengkap dengan `PRIMARY KEY` dan `FOREIGN KEY`.
*   `Data_Validation_Checks.sql`: Skrip SQL untuk memvalidasi data yang telah diimpor, termasuk pengecekan jumlah record dan konsistensi data.
*   `Exploratory_Data_Analysis_Queries.sql`: Kumpulan query SQL untuk analisis data awal, seperti mengidentifikasi produk terlaris atau distribusi pelanggan per kota.
*   `Report_Penjualan_Summary.sql`: Skrip SQL untuk menghasilkan laporan penjualan harian, mingguan, dan bulanan.
*   `data_perusahaan_kuliner.xlsx`: Data mentah dalam format Excel yang digunakan sebagai sumber data untuk database.
*   `Perusahaan.csv`, `Pelanggan.csv`, `Produk_Menu.csv`, `Transaksi_Penjualan.csv`: Data yang telah dipecah dari file Excel mentah ke format CSV siap impor.
*   `LICENSE`: Informasi lisensi proyek (GPL-3.0).


## 🛠 Teknologi yang Digunakan

*   **Database**: MySQL
*   **Database Client**: MySQL Workbench
*   **Analisis Data**: Python (dengan *library* seperti Pandas, Matplotlib, Seaborn)
*   **Lingkungan Pengembangan**: Google Colab
*   **Version Control**: Git & GitHub

---
