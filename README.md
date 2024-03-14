# TP1PROVIS  

# PENJELASAN KODE
## IMPLEMENTASI OOP
1. Kelas Mahasiswa
   - Kelas ini digunakan untuk merepresentasikan objek mahasiswa.
   - Memiliki properti nim dan nama yang disimpan sebagai data privat (_nim dan _nama) dengan menggunakan konsep encapsulation.
   - Terdapat constructor untuk membuat objek Mahasiswa dengan memberikan nilai awal pada properti nim dan nama.
   - Metode getNim() dan getNama() digunakan untuk mendapatkan nilai dari properti _nim dan _nama.
   - Terdapat setter nimMhs() dan namaMhs() untuk mengubah nilai properti _nim dan _nama.
3. Kelas Divisi
   - Kelas ini digunakan untuk merepresentasikan objek divisi dalam organisasi.
   - Memiliki properti _namaDivisi yang disimpan sebagai data privat dengan menggunakan konsep encapsulation.
   - Terdapat constructor untuk membuat objek Divisi dengan memberikan nilai awal pada properti _namaDivisi.
   - Metode getNamaDivisi() digunakan untuk mendapatkan nilai dari properti _namaDivisi.
   - Terdapat setter namaDivisi() untuk mengubah nilai properti _namaDivisi.
   - Metode tambahAnggota(), hapusAnggota(), dan tampilkanDaftarAnggota() digunakan untuk mengelola anggota dalam divisi.
   - Metode lakukanProker() digunakan untuk mensimulasikan pengerjaan proker oleh divisi dengan menggunakan asynchronous delay.
     
## IMPLEMENTASI ASYNCHRONOUS
1. Penggunaan Future
   - Pada metode lakukanProker() dalam kelas Divisi, menggunakan await Future.delayed(Duration(seconds: 3)) untuk mensimulasikan waktu yang dibutuhkan untuk menyelesaikan proker.
   - Metode ini menjadi asynchronous karena menggunakan await dan Future, sehingga memungkinkan program untuk melanjutkan eksekusi selanjutnya tanpa harus menunggu waktu yang ditentukan selesai.
3. Pemanggilan Asynchronous
   - Dalam main(), kita menggunakan await saat memanggil metode lakukanProker() untuk divisi dpo dan divroh. Hal ini memastikan bahwa proker yang sedang dikerjakan oleh divisi tersebut selesai sebelum program melanjutkan eksekusi selanjutnya.
   - Dengan menggunakan asynchronous, program dapat menjalankan beberapa tugas secara paralel dan efisien, seperti pengerjaan proker oleh beberapa divisi secara bersa
