import 'package:flutter/material.dart';
import 'package:tonoun/sevices/utils.dart';
import 'package:tonoun/sevices/widgets/categories_widget.dart';
import 'package:tonoun/sevices/widgets/text_widget.dart';

class CategoriesScreen extends StatelessWidget {
  CategoriesScreen({Key? key}) : super(key: key);

  List<Color> gridColors = [
    const Color(0xff53B175),
    const Color(0xffF8A44c),
    const Color(0xffF7A593),
    const Color(0xffFDE598),
    const Color(0xffB7DFF5),
    const Color(0xff53B175),

  ];

  List<Map<String, dynamic>> catInfo = [
    {
      'imgPath': 'assets/images/favpng_t-shirt-jersey-adidas-clothing.png',
      'catText': 'ເສື້ອກິລາ',
    },
    {
      'imgPath':
          'assets/images/favpng_t-shirt-jersey-uniform-clothing-sportswear.png',
      'catText': 'ເສື້ອກິລາ',
    },
    {
      'imgPath': 'assets/images/pngwing.com (2).png',
      'catText': 'ເສື້ອກິລາ',
    },
    {
      'imgPath': 'assets/images/pngwing.com (3).png',
      'catText': 'ເສື້ອກິລາ',
    },
    {
      'imgPath': 'assets/images/pngwing.com (4).png',
      'catText': 'ເສື້ອກິລາ',
    },
    {
      'imgPath': 'assets/images/pngwing.com.png',
      'catText': 'ເສື້ອກິລາ',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final utils = Utils(context);
    Color color = utils.color;
    return Scaffold(
      appBar: AppBar(
          elevation: 5,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          title: Textwidget(text: 'Categories', color: color, textSize: 24)),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 240 / 250,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: List.generate(6, (index) {
            return CategoriesWidget(
              catText: catInfo[index]['catText'],
              imgPath: catInfo[index]['imgPath'],
              passedColor: gridColors[index],
            );
          }),
        ),
      ),
    );
  }
}
