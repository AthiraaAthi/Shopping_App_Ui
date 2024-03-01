import 'package:flutter/material.dart';

import '../utils/color_constant/color_constant.dart';

class CartAppBar extends StatelessWidget {
  const CartAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConstant.dark,
      //color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          Icon(
            Icons.shopping_cart,
            size: 30,
            color: ColorConstant.white,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20,
            ),
            child: Text(
              "My Cart",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: ColorConstant.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
