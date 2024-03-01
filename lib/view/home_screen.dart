import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_ui/utils/color_constant/color_constant.dart';
import 'package:shopping_ui/view/home_appbar.dart';

import 'categories_widget.dart';
import 'items_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          HomeAppBar(),
          Container(
            //height: 500,
            padding: EdgeInsets.only(
              top: 15,
            ),
            decoration: BoxDecoration(
              color: ColorConstant.dark,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.black, ///////xx
                    //color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: [
                      Container(
                        color: Colors.black, ///////xx
                        margin: EdgeInsets.only(left: 5),
                        height: 50,
                        width: 300,
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintStyle: TextStyle(color: ColorConstant.white),
                              hintText: "Search Here...."),
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.camera_alt,
                        color: ColorConstant.white,
                      )
                    ],
                  ),
                ),
                Container(
                  //alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 10,
                  ),
                  child: Text(
                    "Categories",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: ColorConstant.white,
                    ),
                  ),
                ),
                //categories
                CategoriesWidget(),

                //items
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: Text(
                    "Best Selling",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: ColorConstant.white,
                    ),
                  ),
                ),
                ItemsWidget()
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
          height: 70,
          onTap: (index) {},
          color: ColorConstant.mainPurple,
          backgroundColor: Colors.transparent,
          items: [
            Icon(
              Icons.home,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              CupertinoIcons.cart_fill,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              Icons.list,
              size: 30,
              color: Colors.white,
            ),
          ]),
    );
  }
}
