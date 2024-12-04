void main() {
  //Soal No 1
  var i = 2;
  var j = 20;
  print("LOOPING PERTAMA");
  while (i <= 20) {
    i += 2;
    print(i.toString() + " - I love coding");
  }
  print("LOOPING KEDUA");
  while (j >= 2) {
    print(j.toString() + " - I will become a mobile developer");
    j -= 2;
  }

  //Soal No 2
  print("==================");
  for (int i = 1; i <= 20; i++) {
    if (i % 2 != 0 && i % 3 == 0) {
      // Kelipatan 3 DAN ganjil
      print("$i - I Love Coding");
    } else if (i % 2 == 0) {
      // Angka genap
      print("$i - Berkualitas");
    } else {
      // Angka ganjil
      print("$i - Santai");
    }
  }

  //Soal No 3
  print('============================');
  for (int i = 0; i < 4; i++) {
    // Loop untuk jumlah baris (4 baris)
    print('#' * 8); // Mengulang karakter '#' sebanyak 8 kali
  }

  //Soal No 4
  print('===============================');
  for (int i = 1; i <= 7; i++) {
    print('#' * i);
  }
}
