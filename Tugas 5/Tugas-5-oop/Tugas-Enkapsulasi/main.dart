import 'lingkaran.dart';

void main(List<String> args) {
  Lingkaran lingkaran1 = Lingkaran();

  lingkaran1.jariJari = -7;
  print('Jari-jari lingkaran: ${lingkaran1.jariJari}');

  double luas = lingkaran1.hitungLuas();
  print('Luas lingkaran: $luas');

  print('Luas yang disimpan (menggunakan getter): ${lingkaran1.getRuas()}');
}
