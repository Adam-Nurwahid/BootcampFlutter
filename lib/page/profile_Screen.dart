import 'package:firebase_auth/firebase_auth.dart'; // Pastikan mengimpor Firebase Auth
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
            Align(
              alignment: Alignment.topCenter,
              child: CircleAvatar(
                radius: 80,
                backgroundImage: NetworkImage('https://instagram.fjog1-1.fna.fbcdn.net/v/t51.2885-19/429139270_408941048208217_5945416782223690077_n.jpg?stp=dst-jpg_s150x150_tt6&_nc_ht=instagram.fjog1-1.fna.fbcdn.net&_nc_cat=101&_nc_ohc=t71ngHcN-gMQ7kNvgEcTFpg&_nc_gid=83cde704f3fb4c329a4707533a029440&edm=AP4sbd4BAAAA&ccb=7-5&oh=00_AYCKZ4TyNR8hMJg_f3VFYq-yf7LsJ508swV0tpCVQZB1sg&oe=67753DD7&_nc_sid=7a9f4b'),
              ),
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                'Nama: Adam\nEmail: adamajalah12345@gmail.com\nUmur: 25',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18),
              ),
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.topCenter,
              child: ElevatedButton(
                onPressed: () async {
                  try {
                    // Melakukan logout dengan Firebase
                    await FirebaseAuth.instance.signOut();
                    print('User logged out');
                    // Pindahkan ke halaman login setelah logout (contoh: menggunakan Navigator)
                    Navigator.pushReplacementNamed(context, '/login');
                  } catch (e) {
                    print('Error logging out: $e');
                  }
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(200, 50),
                  backgroundColor: Colors.red,
                ),
                child: Text(
                  'Log Out',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
