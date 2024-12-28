import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/wishlist_controller.dart';
import '../service/api_service.dart';

class ExploreScreen extends StatefulWidget {
  @override
  _ExploreScreenState createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  final WishlistController wishlistController = Get.put(WishlistController());
  final TextEditingController searchController = TextEditingController();
  String searchQuery = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Explore'),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            child: TextField(
              controller: searchController,
              decoration: InputDecoration(
                hintText: 'Search products...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.white,
              ),
              onChanged: (value) {
                setState(() {
                  searchQuery = value.toLowerCase();
                });
              },
            ),
          ),
        ),
      ),
      body: FutureBuilder(
        future: ApiService.fetchProducts(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            final products = snapshot.data as List<dynamic>;
            final filteredProducts = products.where((product) {
              final title = product['title'].toString().toLowerCase();
              return title.contains(searchQuery);
            }).toList();

            if (filteredProducts.isEmpty) {
              return Center(child: Text('No products found'));
            }

            return ListView.builder(
              itemCount: filteredProducts.length,
              padding: const EdgeInsets.all(10.0),
              itemBuilder: (context, index) {
                final product = filteredProducts[index];
                final isLiked = wishlistController.isInWishlist(product);

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
                    trailing: Obx(() => IconButton(
                      icon: Icon(
                        wishlistController.isInWishlist(product)
                            ? Icons.favorite
                            : Icons.favorite_border,
                        color: Colors.red,
                      ),
                      onPressed: () {
                        if (wishlistController.isInWishlist(product)) {
                          wishlistController.removeFromWishlist(product);
                        } else {
                          wishlistController.addToWishlist(product);
                        }
                      },
                    )),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
