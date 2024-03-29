import 'package:flutter/material.dart';
import 'package:shopping_ui/utils/color_constant/color_constant.dart';
import 'package:badges/badges.dart' as badges;

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConstant.dark,
      //color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          Icon(
            Icons.sort,
            size: 30,
            color: ColorConstant.white,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20,
            ),
            child: Text(
              "Let's Shop",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: ColorConstant.white,
              ),
            ),
          ),
          Spacer(),
          badges.Badge(
            badgeContent: Text(
              "5",
              style: TextStyle(color: Colors.white),
            ),
            // onTap: () {
            //   Navigator.pushNamed(context, "CartPage");
            // },
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, "CartPage");
              },
              child: Icon(
                size: 30,
                Icons.shopping_cart,
                color: ColorConstant.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
