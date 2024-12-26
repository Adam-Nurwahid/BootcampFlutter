import 'package:flutter/material.dart';

import 'category_card.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Selamat Datang di Shopeasy',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                children: [
                  CategoryCard(
                    title: 'Elektronik',
                    icon: Icons.electrical_services,
                    color: Colors.blueAccent,
                  ),
                  CategoryCard(
                    title: 'Fashion',
                    icon: Icons.checkroom,
                    color: Colors.pinkAccent,
                  ),
                  CategoryCard(
                    title: 'Rumah',
                    icon: Icons.home,
                    color: Colors.greenAccent,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}