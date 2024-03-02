import 'package:flutter/material.dart';
import 'package:shopping_ui/utils/color_constant/color_constant.dart';
import 'package:shopping_ui/view/cart_page.dart';
import 'package:shopping_ui/view/home_screen.dart';
import 'package:shopping_ui/view/item_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: ColorConstant.dark,
      ),
      routes: {
        "/": (context) => HomeScreen(),
        "CartPage": (context) => CartPage(),
        "ItemPage": (context) => ItemPage()
      },
      debugShowCheckedModeBanner: false,
      //home: HomeScreen(),
    );
  }
}
