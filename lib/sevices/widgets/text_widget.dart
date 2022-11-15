import 'package:flutter/material.dart';

class Textwidget extends StatelessWidget {
  

 Textwidget({ Key? key,required this.text,required this.color,required this.textSize, this.isTitle =false, this.maxLines=10, }) : super(key: key);
  final String text;
  final Color color;
  final double textSize;
  bool isTitle;
  int maxLines = 10;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:  TextStyle(color: color ,fontSize: textSize,fontWeight:isTitle? FontWeight.bold : FontWeight.normal)
      
    );
  }
}