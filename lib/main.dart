import 'package:flutter/material.dart';
import 'package:grocery_app/pages/home_page.dart';
import 'package:grocery_app/providers/product_provider.dart';
import 'package:grocery_app/themes/my_themes.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const GroceryApp());
}

class GroceryApp extends StatelessWidget {
  const GroceryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ProductProvider(),
        )
      ],
      child: MaterialApp(
        home: const HomePage(),
        theme: theme1,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
