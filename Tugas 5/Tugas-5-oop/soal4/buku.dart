class Buku {
  String judul;
  String pengarang;
  String isbn;
  int jumlah;

  Buku(this.judul, this.pengarang, this.isbn, this.jumlah);

  void tambahBuku(int jumlahBaru) {
    jumlah += jumlahBaru;
    print("Menambahkan $jumlahBaru buku '$judul'. Total sekarang: $jumlah.");
  }

  void hapusBuku(int jumlahHapus) {
    if (jumlah >= jumlahHapus) {
      jumlah -= jumlahHapus;
      print("Menghapus $jumlahHapus buku '$judul'. Total sekarang: $jumlah.");
    } else {
      print("Jumlah buku '$judul' tidak mencukupi untuk dihapus.");
    }
  }

  void editBuku(String judulBaru, String pengarangBaru, String isbnBaru) {
    judul = judulBaru;
    pengarang = pengarangBaru;
    isbn = isbnBaru;
    print("Buku telah diperbarui menjadi: '$judul' oleh $pengarang.");
  }

  void tampilkanInfo() {
    print('Judul: $judul, Pengarang: $pengarang, ISBN: $isbn, Jumlah: $jumlah');
  }
}
