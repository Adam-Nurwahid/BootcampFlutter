import 'dart:io';

void main(List<String> args) {
  //Soal No 1
  print("Apakah Anda Mau Install Aplikasi?(Y/N)");

  String? answer = stdin.readLineSync()!;

  if (answer != null && answer.toLowerCase() == 'y') {
    print('Anda akan menginstall aplikasi dart');
  } else {
    print('Aborted');
  }
  print('========================================================');
  //Soal No 2
  print('Masukan Nama');
  String? nama = stdin.readLineSync()!;

  print("Masukkan peran (Penyihir, Guard, Werewolf): ");
  String? peran = stdin.readLineSync()!;

  if (nama == null || nama.isEmpty) {
    print("Nama harus diisi!");
  } else if (peran == null || peran.isEmpty) {
    print("Halo $nama, Pilih peranmu untuk memulai game!");
  } else if (peran.toLowerCase() == "penyihir") {
    print("Selamat datang di Dunia Werewolf, $nama");
    print(
        "Halo Penyihir $nama, kamu dapat melihat siapa yang menjadi werewolf!");
  } else if (peran.toLowerCase() == "guard") {
    print("Selamat datang di Dunia Werewolf, $nama");
    print(
        "Halo Guard $nama, kamu akan membantu melindungi temanmu dari serangan werewolf.");
  } else if (peran.toLowerCase() == "werewolf") {
    print("Selamat datang di Dunia Werewolf, $nama");
    print("Halo Werewolf $nama, Kamu akan memakan mangsa setiap malam!");
  } else {
    print("Peran tidak valid. Pilih antara Penyihir, Guard, atau Werewolf.");
  }

  print('========================================================');
  //Soal No 3

  print('Masukan Hari');
  String? hari = stdin.readLineSync()!;

  switch (hari) {
    case 'Senin':
      print(
          'Segala sesuatu memiliki kesudahan, yang sudah berakhir biarlah berlalu dan yakinlah semua akan baik-baik saja.');
    case 'Selasa':
      print(
          'Setiap detik sangatlah berharga karena waktu mengetahui banyak hal, termasuk rahasia hati');
    case 'Rabu':
      print(
          'Jika kamu tak menemukan buku yang kamu cari di rak, maka tulislah sendiri.');
    case 'Kamis':
      print(
          'Jika hatimu banyak merasakan sakit, maka belajarlah dari rasa sakit itu untuk tidak memberikan rasa sakit pada orang lain.');
    case 'Jumat':
      print('Hidup tak selamanya tentang pacar.');
    case 'Sabtu':
      print('Rumah bukan hanya sebuah tempat, tetapi itu adalah perasaan.');
    case 'Minggu':
      print(
          'Hanya seseorang yang takut yang bisa bertindak berani. Tanpa rasa takut itu tidak ada apapun yang bisa disebut berani.');
      break;
    default:
      print('Hari tidak dikenal, pastikan ejaan benar.');
  }
  print('========================================================');

  //SOAL NO 4

  var day = 26;
  var bulan = 10;
  var tahun = 2000;
  String bulanNama;

  switch (bulan) {
    case 1:
      bulanNama = 'Januari';
      break;
    case 2:
      bulanNama = 'Februari';
      break;
    case 3:
      bulanNama = 'Maret';
      break;
    case 4:
      bulanNama = 'April';
      break;
    case 5:
      bulanNama = 'Mei';
      break;
    case 6:
      bulanNama = 'Juni';
      break;
    case 7:
      bulanNama = 'Juli';
      break;
    case 8:
      bulanNama = 'Agustus';
      break;
    case 9:
      bulanNama = 'September';
      break;
    case 10:
      bulanNama = 'Oktober';
      break;
    case 11:
      bulanNama = 'November';
      break;
    case 12:
      bulanNama = 'Desember';
      break;
    default:
      bulanNama = 'Bulan tidak valid';
  }

  print('$day $bulanNama $tahun');
}
