import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/cart_provider.dart';
import '../providers/product_provider.dart';
import '../screens/cart_screen.dart';
import '../screens/product_list_screen.dart';


void main() {
  runApp(MyApp());
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ProductProvider()),
        ChangeNotifierProvider(create: (context) => CartProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {  
    return MaterialApp(
        title: 'Martketplace', 
        routes: {
          '/': (context) => const ProductListScreen(),
          '/cart': (context) => const CartScreen(),
        }
      ,);
  }
}