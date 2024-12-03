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
  var words = sentence.split(' '); // Memisahkan kalimat menjadi array kata

  var exampleFirstWord = words[0];
  var exampleSecondWord = words[1];
  var thirdWord = words[2]; // lakukan sendiri
  var fourthWord = words[3]; // lakukan sendiri
  var fifthWord = words[4]; // lakukan sendiri
  var sixthWord = words[5]; // lakukan sendiri
  var seventhWord = words[6]; // lakukan sendiri

//   var exampleFirstWord = sentence[0];
//   var exampleSecondWord = sentence[2] + sentence[3];
// //deklarasi sendiri
//   var secondWord = sentence[1];
// //-----------------------
// //Jawaban No 2
//   var thirdWord = sentence[2];
//   var fourthWord = sentence[3]; // lakukan sendiri
//   var fifthWord = sentence[4]; // lakukan sendiri
//   var sixthWord = sentence[5]; // lakukan sendiri
//   var seventhWord = sentence[6]; // lakukan sendiri
  //JAWABAN NO 2
  print('First Word: ' + exampleFirstWord);
  print('Second Word: ' +
      exampleSecondWord); //ini di soal tidak ada, jadi saya deklarasikan sendiri
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
