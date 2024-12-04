void main() {
  //Jawaban No 1
  teriak();
  print('=====================');
//Jawaban No 2
  var num1 = 12;
  var num2 = 4;

  var hasilKali = kalikan(num1, num2);
  print(hasilKali); // 48
  print('=====================');
  //Jawaban No 3
  var name = "Agus";
  var age = 30;
  var address = "Jln. Malioboro, Yogyakarta";
  var hobby = "Gaming";

  var perkenalan = introduce(name, age, address, hobby);
  print(perkenalan);
  print('=====================');
  //Jawaban No 4
  int number = 6;
  int hasilFaktorial = factorial(number);

  print("$number! = $hasilFaktorial");
}

//Jawaban No 1
teriak() {
  print('Halao Sanbers!');
}

//Jawaban No 2
kalikan(x, y) {
  return x * y;
}

//Jawaban No 3
String introduce(String name, int age, String address, String hobby) {
  return "Nama saya $name, umur saya $age tahun, alamat saya di $address, dan saya punya hobby yaitu $hobby!";
}

//Jawaban No 4
int factorial(int number) {
  if (number <= 0) {
    return 1;
  }
  int result = 1;
  for (int i = 1; i <= number; i++) {
    result *= i;
  }
  return result;
}
