import 'package:flutter/material.dart';
import 'package:shopping_ui/utils/color_constant/color_constant.dart';

import 'item_appbar.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.dark,
      body: ListView(
        children: [
          ItemAppBar(),
        ],
      ),
    );
  }
}
