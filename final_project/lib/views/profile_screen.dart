import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            // Foto Profil
            Align(
              alignment: Alignment.topCenter, // Agar tetap di atas, tapi tetap di tengah
              child: CircleAvatar(
                radius: 80,
                backgroundImage: NetworkImage('https://example.com/profile.jpg'), // Ganti URL dengan foto profil Anda
              ),
            ),
            SizedBox(height: 20),
            // Informasi Pribadi
            Align(
              alignment: Alignment.topCenter, // Agar tetap di atas, tapi tetap di tengah
              child: Text(
                'Nama: Adam\nEmail: adam@example.com\nUmur: 25',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18),
              ),
            ),
            SizedBox(height: 20),
            // Tombol Log Out
            Align(
              alignment: Alignment.topCenter, // Agar tetap di atas, tapi tetap di tengah
              child: ElevatedButton(
                onPressed: () {
                  // Logika untuk keluar atau logout
                  print('Logging out...');
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(200, 50),
                  backgroundColor: Colors.red, // Warna latar belakang tombol
                ),
                child: Text(
                  'Log Out',
                  style: TextStyle(color: Colors.white), // Mengubah warna teks menjadi putih
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
