import 'package:get/get.dart';

class WishlistController extends GetxController {
  // Daftar produk yang disukai
  var wishlist = <Map<String, dynamic>>[].obs;

  // Menambahkan produk ke wishlist
  void addToWishlist(Map<String, dynamic> product) {
    if (!wishlist.contains(product)) {
      wishlist.add(product);
    }
  }

  // Menghapus produk dari wishlist
  void removeFromWishlist(Map<String, dynamic> product) {
    wishlist.remove(product);
  }

  // Memeriksa apakah produk sudah ada di wishlist
  bool isInWishlist(Map<String, dynamic> product) {
    return wishlist.contains(product);
  }
}
