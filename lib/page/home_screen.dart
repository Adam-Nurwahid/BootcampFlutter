import 'package:flutter/material.dart';
import 'package:shopeasy/page/product_page.dart';
import 'category_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopeasy'),
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
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductsPage(category: 'electronics'),
                        ),
                      );
                    },
                  ),
                  CategoryCard(
                    title: 'Fashion Pria',
                    icon: Icons.checkroom,
                    color: Colors.pinkAccent,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductsPage(category: 'men\'s clothing'),
                        ),
                      );
                    },
                  ),
                  CategoryCard(
                    title: 'Perhiasan',
                    icon: Icons.home,
                    color: Colors.greenAccent,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductsPage(category: 'jewelery'),
                        ),
                      );
                    },
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
