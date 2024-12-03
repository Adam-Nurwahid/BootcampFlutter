//Jawaban
import 'dart:io';

void main(List<String> args) {
  //Soal No 1
  var word = 'dart ';
  var second = 'is ';
  var third = 'awesome ';
  var fourth = 'and ';
  var fifth = 'I ';
  var sixth = 'love ';
  var seventh = 'it! ';

  //Jawaban No 1
  print(word + second + third + fourth + fifth + sixth + seventh);

  //Soal No 2
  var sentence = "I am going to be Flutter Developer";

  var exampleFirstWord = sentence[0];
  var exampleSecondWord = sentence[2] + sentence[3];
  var thirdWord =
      sentence[5] + sentence[6] + sentence[7] + sentence[8] + sentence[9];
  var fourthWord = sentence[11] + sentence[12]; // lakukan sendiri
  var fifthWord = sentence[14] + sentence[15]; // lakukan sendiri
  var sixthWord = sentence[17] +
      sentence[18] +
      sentence[19] +
      sentence[20] +
      sentence[21] +
      sentence[22] +
      sentence[23]; // lakukan sendiri
  var seventhWord = sentence[25] +
      sentence[26] +
      sentence[27] +
      sentence[28] +
      sentence[29] +
      sentence[30] +
      sentence[31] +
      sentence[32] +
      sentence[33]; // lakukan sendiri

  print('First Word: ' + exampleFirstWord);
  print('Second Word: ' + exampleSecondWord);
  print('Third Word: ' + thirdWord);
  print('Fourth Word: ' + fourthWord);
  print('Fifth Word: ' + fifthWord);
  print('Sixth Word: ' + sixthWord);
  print('Seventh Word: ' + seventhWord);
//Jawaban NO 3
  print("masukan Nama Depan");

  String? firstName = stdin.readLineSync()!;
  print("masukan Nama Belakang");
  String? lastName = stdin.readLineSync()!;

  print("Nama Lengkap Anda adalah  : ${firstName + ' ' + lastName}");

  //Jawaban No 4
  var a = 5;
  var b = 10;

  print("Perkalian : ${a * b}");
  print("Pembagian : ${a / b}");
  print("Pertambahan : ${a + b}");
  print("Pengurangan : ${a - b}");
}
