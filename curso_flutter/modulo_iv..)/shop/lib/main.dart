import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/models/cart.dart';
import 'package:shop/models/oder_list.dart';
import 'package:shop/models/product_list.dart';
import 'package:shop/pages/cart_page.dart';
import 'package:shop/pages/order_Pages.dart';
import 'package:shop/pages/product_detail_page.dart';
import 'package:shop/pages/product_form_page.dart';
import 'package:shop/pages/products_overview_page.dart';
import 'package:shop/pages/productt_page.dart';
import 'package:shop/utils/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => new ProductList(),
        ),
        ChangeNotifierProvider(
          create: (_) => new Cart(),
        ),
        ChangeNotifierProvider(
          create: (_) => new OrederList(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: Colors.purple,
            secondary: Colors.deepOrange,
          ),
          fontFamily: 'Lato',
        ),
        // home: const ProductsOverviewPage(),
        routes: {
          AppRoutes.KproductDetail: (ctx) => const ProductDetailPage(),
          AppRoutes.Kcart: (ctx) => const CartPage(),
          AppRoutes.Khome: (context) => ProductsOverviewPage(),
          AppRoutes.KOder: (context) => OdersPages(),
          AppRoutes.KproductsPage: (context) => ProductsPage(),
          AppRoutes.KproducFormePage: (context) => ProductFormPage()
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
