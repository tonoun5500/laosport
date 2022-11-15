import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/dark_theme_provider.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget(
      {Key? key,
      required this.catText,
      required this.passedColor,
      required this.imgPath})
      : super(key: key);

  final String catText, imgPath;
  final Color passedColor;

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    final ThemeState = Provider.of<DarkThemePovider>(context);

    final Color color = ThemeState.getDarkTheme ? Colors.white : Colors.black;

    double _screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: _screenWidth * 0.6,
      decoration: BoxDecoration(
          color: passedColor.withOpacity(0.1),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: passedColor.withOpacity(0.7), width: 2)),
      child: Column(children: [
        Container(
          height: _screenWidth * 0.3,
          width: _screenWidth * 0.3,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(imgPath), fit: BoxFit.fill)),
        ),
        Text(
          catText,
          style: TextStyle(color: color, fontSize: 20),
        )
      ]),
    );
  }
}
