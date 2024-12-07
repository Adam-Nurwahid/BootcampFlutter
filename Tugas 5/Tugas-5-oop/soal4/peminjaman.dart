import 'buku.dart';
import 'anggota.dart';

class Peminjaman {
  Buku buku;
  Anggota anggota;
  DateTime tanggalPeminjaman;
  DateTime? tanggalKembali;

  Peminjaman(this.buku, this.anggota, this.tanggalPeminjaman,
      [this.tanggalKembali]);

  void pinjamBuku() {
    print(
        '${anggota.nama}, meminjam buku ${buku.judul} pada ${tanggalPeminjaman}.');
  }

  void kembaliBuku() {
    tanggalKembali = DateTime.now();
    print(
        '${anggota.nama} mengembalikan buku ${buku.judul} pada $tanggalKembali');
  }
}
