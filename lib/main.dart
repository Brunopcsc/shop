import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/models/cart.dart';
import 'package:shop/models/order_list.dart';
import 'package:shop/models/product_list.dart';
import 'package:shop/pages/cart_page.dart';
import 'package:shop/pages/orders_pages.dart';
import 'package:shop/pages/product_detail_page.dart';
import 'package:shop/pages/products_overview.dart';
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
          create: (_) => ProductList(),
        ),
        ChangeNotifierProvider(
          create: (_) => Cart(),
        ),
        ChangeNotifierProvider(
          create: (_) => OrderList(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.purple,
          accentColor: Colors.deepOrange,
          fontFamily: 'Lato',
        ),
        //home: ProductsOverviewPage(),
        routes: {
          AppRoutes.HOME: ((context) => ProductsOverviewPage()),
          AppRoutes.PRODUCT_DETAIL: ((context) => ProductDetailsPage()),
          AppRoutes.CART: ((context) => CartPage()),
          AppRoutes.ORDERS: ((context) => OrdersPage()),
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
