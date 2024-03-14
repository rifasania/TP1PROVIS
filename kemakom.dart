import 'dart:async';

class Mahasiswa {  
  String _nim = "";
  String _nama = "";

  Mahasiswa(nim, nama){
    this._nim = nim;
    this._nama = nama;
  }

  set nimMhs(String nim){
    this._nim = nim;
  }

  String getNim(){
    return this._nim;
  }

  set namaMhs(String nama){
    this._nama = nama;
  }

  String getNama(){
    return this._nama;
  }
}

class Divisi {
  String _namaDivisi = "";  
  List<Mahasiswa> _anggotaList = [];

  Divisi(String namaDivisi){
    this._namaDivisi = namaDivisi;
  }

  set namaDivisi(String namaDivisi){
    this._namaDivisi = namaDivisi;
  }
  
  String getNamaDivisi(){
    return this._namaDivisi;
  }

  void tambahAnggota(Mahasiswa mahasiswa) {
    _anggotaList.add(mahasiswa);
    print('Mahasiswa : ${mahasiswa.getNama()} dengan NIM ${mahasiswa.getNim()} menjadi anggota BEM Kemakom Divisi $_namaDivisi.');
  }

  void hapusAnggota(String nim) {
    _anggotaList.removeWhere((mahasiswa) => mahasiswa.getNim() == nim);
    print('Mahasiswa dengan NIM $nim telah dihapus dari divisi $_namaDivisi.');
  }

  void tampilkanDaftarAnggota() {
    if (_anggotaList.isEmpty) {
      print('Divisi $_namaDivisi tidak memiliki anggota.');
    } else {
      print('Daftar Anggota Divisi $_namaDivisi:');
      _anggotaList.forEach((mahasiswa) {
        print('${mahasiswa.getNama()} (${mahasiswa.getNim()})');
      });
    }
  }

  Future<void> lakukanProker(String namaproker) async {
    print('Divisi $_namaDivisi sedang mengerjakan program kerja $namaproker...');
    await Future.delayed(Duration(seconds: 3));
    print('Divisi $_namaDivisi telah menyelesaikan program kerja $namaproker.');
  }
}

void main() async {
  Divisi dpo = Divisi('Pengembangan Organisasi');
  Divisi ekobis = Divisi('Ekonomi dan Bisnis');
  Divisi divroh = Divisi('Kerohanian');

  Mahasiswa mhs1 = Mahasiswa('2206697', 'Rifa Sania');
  Mahasiswa mhs2 = Mahasiswa('2207045', 'Muhammad Alfi');
  Mahasiswa mhs3 = Mahasiswa('2207186', 'Salma Ghaida');
  Mahasiswa mhs4 = Mahasiswa('2205449', 'Raihan Aulia');
  Mahasiswa mhs5 = Mahasiswa('2206847', 'Muhammad Yusdan');

  dpo.tambahAnggota(mhs1);
  dpo.tambahAnggota(mhs2);
  ekobis.tambahAnggota(mhs3);
  ekobis.tambahAnggota(mhs4);
  divroh.tambahAnggota(mhs5);

  print("");

  dpo.tampilkanDaftarAnggota();
  print("");
  ekobis.tampilkanDaftarAnggota();
  print("");
  divroh.tampilkanDaftarAnggota();
  print("");

  await dpo.lakukanProker('Kemakom Leadership Training');
  print("");
  await divroh.lakukanProker('Maulid Kemakom Festival');
  print("");
}
