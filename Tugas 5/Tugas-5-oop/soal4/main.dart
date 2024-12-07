import 'anggota.dart';
import 'buku.dart';
import 'petugas.dart';
import 'peminjaman.dart';

void main() {
  Anggota anggota1 = Anggota('John Doe', 'A001', 'Jl. Merdeka No. 1');
  anggota1.daftarAnggota();
  anggota1.tampilkanInfo();

  Buku buku1 = Buku('Pemrograman Dart', 'Budi Santoso', '978-1234567890', 10);
  buku1.tampilkanInfo();

  Petugas petugas1 = Petugas('Ali', 'P001');
  petugas1.login('password123');

  petugas1.kelolaBuku(buku: buku1, aksi: 'tambah', jumlah: 5);

  Peminjaman peminjaman1 = Peminjaman(buku1, anggota1, DateTime.now());
  peminjaman1.pinjamBuku();

  peminjaman1.kembaliBuku();

  // Mengedit informasi buku
  buku1.editBuku('Pemrograman Dart Lanjutan', 'Budi Santoso', '978-1234567891');
  buku1.tampilkanInfo();
}
