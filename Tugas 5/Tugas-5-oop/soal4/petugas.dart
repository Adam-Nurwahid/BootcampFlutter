import 'buku.dart';
import 'anggota.dart';

class Petugas {
  String nama;
  String idPetugas;

  Petugas(this.nama, this.idPetugas);

  bool login(String password) {
    if (password == 'password123') {
      print("$nama berhasil login");
      return true;
    } else {
      print('Login Gagal: Password Salah');
      return false;
    }
  }

  Future<void> kelolaBuku({
    required Buku buku,
    Buku? editBuku,
    required String aksi,
    int? jumlah,
  }) async {
    if (aksi == 'tambah') {
      print("=== Tambah Buku ===");
      buku.tambahBuku(jumlah ?? 1);
      print("Buku berhasil ditambahkan");
    } else if (aksi == 'hapus') {
      buku.hapusBuku(jumlah ?? 1);
    } else if (aksi == 'edit' && editBuku != null) {
      buku.editBuku(editBuku.judul, editBuku.pengarang, editBuku.isbn);
    }
  }

  void kelolaAnggota() {
    // Bisa menambah fungsionalitas untuk mengelola anggota
    print("Mengelola anggota...");
  }

  void tampilkanInfo() {
    print('Nama Petugas: $nama, ID Petugas: $idPetugas');
  }
}
