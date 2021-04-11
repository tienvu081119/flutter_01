import 'package:app_ui_01/src/ui/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:app_ui_01/src/models/product.dart';
import 'package:app_ui_01/src/ui/screens/home/detail.dart';
import 'package:app_ui_01/src/ui/screens/home/detail2.dart';

const initRouter = '/Home';
class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/Home':
        return MaterialPageRoute(
            builder: (_) => HomeSreen(),
            settings: RouteSettings(name: '/Home'));
      case '/Detail':
        var agruments = settings.arguments as Map<String, dynamic>;
        Product product = agruments['product'] as Product;
        String someString = agruments['someString'];
        print(someString);
        // Product product = settings.arguments as Product;
        return MaterialPageRoute(
            builder: (_) => DetailScreen(product: product),
            settings: RouteSettings(name: '/Detail'));
      case '/Detail2':
        return MaterialPageRoute(
            builder: (_) => Detail2(),
            settings: RouteSettings(name: '/Detail2'));
    }
  }
}
