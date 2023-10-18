import 'package:rubbin_store/modules/home/home_screen.dart';
import 'package:rubbin_store/modules/product_details/product_details_screen.dart';

class Routes {
  static String initialRoute = '/';
  static String product = '/shop/product';
}

final routes = {
  Routes.initialRoute: (context) => const HomeScreen(),
  Routes.product: (context) => ProductDetails()
};
