import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: CounterPage());
  }
}

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Page'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                counter--;
                setState(() {});
              },
              child: const Icon(Icons.remove),
            ),
            const SizedBox(width: 20),
            Text('Nilai Counter : $counter'),
            const SizedBox(width: 20),
            InkWell(
              onTap: () {
                counter++;
                setState(() {});
              },
              child: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}

// ANALISIS TERHADAP SETSTATE
// APA KEGUNAAN
// setState() digunakan setiap kali nilai counter diperbarui (baik menambah atau mengurangi nilai). Ketika setState() dipanggil, Flutter akan:
//
// Memperbarui status internal widget.
// Memicu rebuild (pembangunan ulang) widget, yang mengakibatkan tampilan yang berhubungan dengan widget tersebut (seperti Text yang menampilkan nilai counter) untuk diperbarui dan menampilkan nilai terbaru.
