class Segitiga {
  double hitungLuas(double alas, double tinggi) {
    return 0.5 * alas * tinggi;
  }
}

void main() {
  Segitiga segitiga = Segitiga();

  double alas = 10.0;
  double tinggi = 5.0;
  double luas = segitiga.hitungLuas(alas, tinggi);

  print("Luas Segitiga: $luas");
}
