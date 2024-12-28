import 'package:get/get.dart';

class WishlistController extends GetxController {
  // Daftar produk yang disukai
  var wishlist = <dynamic>[].obs;

  // Menambahkan produk ke wishlist
  void addToWishlist(dynamic product) {
    if (!isInWishlist(product)) {
      wishlist.add(product);
    }
  }

  // Menghapus produk dari wishlist
  void removeFromWishlist(dynamic product) {
    wishlist.removeWhere((item) => item['id'] == product['id']);
  }

  // Memeriksa apakah produk sudah ada di wishlist
  bool isInWishlist(dynamic product) {
    return wishlist.any((item) => item['id'] == product['id']);
  }
}
