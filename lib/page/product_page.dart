import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ProductsPage extends StatelessWidget {
  final String category;

  const ProductsPage({required this.category});

  Future<List> fetchProducts() async {
    final response = await http.get(
      Uri.parse('https://fakestoreapi.com/products/category/$category'),
    );
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load products');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products: $category'),
      ),
      body: FutureBuilder<List>(
        future: fetchProducts(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (snapshot.hasData) {
            final products = snapshot.data!;
            return ListView.builder(
              itemCount: products.length,
              padding: const EdgeInsets.all(10.0),
              itemBuilder: (context, index) {
                final product = products[index];
                return Card(
                  elevation: 5,
                  margin: const EdgeInsets.symmetric(vertical: 10.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(10.0),
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.network(
                        product['image'],
                        width: 70,
                        height: 70,
                        fit: BoxFit.cover,
                      ),
                    ),
                    title: Text(
                      product['title'],
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      '\$${product['price']}',
                      style: TextStyle(color: Colors.green, fontSize: 16),
                    ),
                  ),
                );
              },
            );
          } else {
            return Center(child: Text('No products found'));
          }
        },
      ),
    );
  }
}
