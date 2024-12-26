import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/wishlist_controller.dart';

class WishlistScreen extends StatelessWidget {
  final WishlistController wishlistController = Get.find<WishlistController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wishlist'),
      ),
      body: Obx(() {
        if (wishlistController.wishlist.isEmpty) {
          return Center(
            child: Text('Your wishlist is empty.'),
          );
        }

        return ListView.builder(
          itemCount: wishlistController.wishlist.length,
          padding: const EdgeInsets.all(10.0),
          itemBuilder: (context, index) {
            final product = wishlistController.wishlist[index];
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
                trailing: IconButton(
                  icon: Icon(Icons.delete, color: Colors.red),
                  onPressed: () {
                    wishlistController.removeFromWishlist(product);
                  },
                ),
              ),
            );
          },
        );
      }),
    );
  }
}
