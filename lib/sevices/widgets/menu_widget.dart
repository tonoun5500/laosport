import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tonoun/screen/cart.dart';
import 'package:tonoun/screen/categories.dart';
import 'package:tonoun/screen/home_screen.dart';
import 'package:tonoun/sevices/widgets/menu_detail.dart';

import '../../provider/dark_theme_provider.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget(
      {Key? key,
      required this.catText,
      required this.passedColor,
      required this.imgPath})
      : super(key: key);

  final String catText, imgPath;
  final Color passedColor;
 

  @override
  Widget build(BuildContext context) {
    final ThemeState = Provider.of<DarkThemePovider>(context);

    final Color color = ThemeState.getDarkTheme ? Colors.white : Colors.black;

    double _screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: _screenWidth * 0.30,
    
      child: Column(children: [
        InkWell(
          onTap: () => CategoriesScreen(),
          child: Container(
            height: _screenWidth * 0.15,
            width: _screenWidth * 0.15,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                    image: AssetImage(imgPath), fit: BoxFit.fill)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 4, 0, 0),
          child: Text(
            catText,
            style: TextStyle(color: color, fontSize: 10),
          ),
        )
      ]),
    );
  }
}
