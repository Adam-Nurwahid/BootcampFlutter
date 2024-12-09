Future<void> line() async {
  print('Pernahkah kau merasa');
}

Future<void> line2() async {
  print('Pernahkah kau merasa ...........');
}

Future<void> line3() async {
  print('Pernahkah kau merasa');
}

Future<void> line4() async {
  print('Hatimu hampa, pernahkah kau merasa, hatimu kosong ...........');
}

Future<void> main(List<String> args) async {
  print('Ready. Sing');

  await Future.delayed(Duration(seconds: 5)); // Jeda 5 detik
  await line();

  await Future.delayed(Duration(seconds: 3)); // Jeda 3 detik
  await line2();

  await Future.delayed(Duration(seconds: 2)); // Jeda 2 detik
  await line3();

  await Future.delayed(Duration(seconds: 1)); // Jeda 1 detik
  await line4();
}
