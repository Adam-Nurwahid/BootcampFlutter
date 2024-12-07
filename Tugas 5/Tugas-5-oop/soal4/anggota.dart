class Anggota {
  String nama;
  String idAnggota;
  String alamat;

  Anggota(this.nama, this.idAnggota, this.alamat);

  void daftarAnggota() {
    print("Anggota $nama dengan ID $idAnggota telah terdaftar.");
  }

  void hapusAnggota() {
    print("Anggota $nama dengan ID $idAnggota telah dihapus.");
  }

  void editAnggota(String namaBaru, String alamatBaru) {
    nama = namaBaru;
    alamat = alamatBaru;
    print("Anggota dengan ID $idAnggota telah diperbarui.");
  }

  void tampilkanInfo() {
    print('Nama: $nama, ID Anggota: $idAnggota, Alamat: $alamat');
  }
}
